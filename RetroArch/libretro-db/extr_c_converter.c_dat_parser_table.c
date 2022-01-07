
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int * string; int * list; } ;
struct TYPE_9__ {int * key; TYPE_1__ value; int type; int member_0; } ;
typedef TYPE_3__ dat_converter_map_t ;
typedef int dat_converter_list_t ;
struct TYPE_8__ {char* fname; int line_no; int column; int * label; } ;
struct TYPE_10__ {TYPE_2__ token; } ;
typedef TYPE_4__ dat_converter_list_item_t ;


 int DAT_CONVERTER_LIST_MAP ;
 int DAT_CONVERTER_MAP_LIST ;
 int DAT_CONVERTER_STRING_MAP ;
 int dat_converter_exit (int) ;
 int dat_converter_list_append (int *,TYPE_3__*) ;
 int * dat_converter_list_create (int ) ;
 int dat_converter_list_free (int *) ;
 int printf (char*,char*,int,int) ;
 scalar_t__ string_is_equal (int *,char*) ;

__attribute__((used)) static dat_converter_list_t* dat_parser_table(
      dat_converter_list_item_t** start_token)
{
   dat_converter_list_t* parsed_table =
      dat_converter_list_create(DAT_CONVERTER_MAP_LIST);
   dat_converter_map_t map = {0};
   dat_converter_list_item_t* current = *start_token;

   while (current->token.label)
   {

      if (!map.key)
      {
         if (string_is_equal(current->token.label, ")"))
         {
            current++;
            *start_token = current;
            return parsed_table;
         }
         else if (string_is_equal(current->token.label, "("))
         {
            printf("%s:%d:%d: fatal error: Unexpected '(' instead of key\n",
                   current->token.fname,
                   current->token.line_no,
                   current->token.column);
            dat_converter_exit(1);
         }
         else
         {
            map.key = current->token.label;
            current++;
         }
      }
      else
      {
         if (string_is_equal(current->token.label, "("))
         {
            current++;
            map.type = DAT_CONVERTER_LIST_MAP;
            map.value.list = dat_parser_table(&current);
            dat_converter_list_append(parsed_table, &map);
         }
         else if (string_is_equal(current->token.label, ")"))
         {
            printf("%s:%d:%d: fatal error: Unexpected ')' instead of value\n",
                   current->token.fname,
                   current->token.line_no,
                   current->token.column);
            dat_converter_exit(1);
         }
         else
         {
            map.type = DAT_CONVERTER_STRING_MAP;
            map.value.string = current->token.label;
            dat_converter_list_append(parsed_table, &map);
            current++;
         }
         map.key = ((void*)0);
      }
   }

   printf("%s:%d:%d: fatal error: Missing ')' for '('\n",
          (*start_token)->token.fname,
          (*start_token)->token.line_no,
          (*start_token)->token.column);
   dat_converter_exit(1);


   dat_converter_list_free(parsed_table);
   return ((void*)0);
}
