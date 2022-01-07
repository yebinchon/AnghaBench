
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_21__ TYPE_6__ ;
typedef struct TYPE_20__ TYPE_5__ ;
typedef struct TYPE_19__ TYPE_4__ ;
typedef struct TYPE_18__ TYPE_3__ ;
typedef struct TYPE_17__ TYPE_2__ ;
typedef struct TYPE_16__ TYPE_1__ ;


struct TYPE_18__ {char* value; struct TYPE_18__* next; } ;
typedef TYPE_3__ dat_converter_match_key_t ;
struct TYPE_16__ {int * list; } ;
struct TYPE_19__ {char* key; TYPE_1__ value; void* type; } ;
typedef TYPE_4__ dat_converter_map_t ;
struct TYPE_20__ {TYPE_6__* values; } ;
typedef TYPE_5__ dat_converter_list_t ;
struct TYPE_17__ {char* label; int line_no; char* fname; int column; } ;
struct TYPE_21__ {TYPE_2__ token; } ;
typedef TYPE_6__ dat_converter_list_item_t ;


 void* DAT_CONVERTER_LIST_MAP ;
 int DAT_CONVERTER_MAP_LIST ;
 int dat_converter_exit (int) ;
 char* dat_converter_get_match (int *,TYPE_3__*) ;
 int dat_converter_list_append (TYPE_5__*,TYPE_4__*) ;
 TYPE_5__* dat_converter_list_create (int ) ;
 int dat_converter_list_free (int *) ;
 int * dat_parser_table (TYPE_6__**) ;
 int printf (char*,...) ;
 scalar_t__ string_is_equal (char*,char*) ;

__attribute__((used)) static dat_converter_list_t* dat_converter_parser(
      dat_converter_list_t* target,
      dat_converter_list_t* lexer_list,
      dat_converter_match_key_t* match_key)
{
   dat_converter_map_t map;
   dat_converter_list_item_t* current = lexer_list->values;
   bool skip = 1;
   bool warning_displayed = 0;

   map.key = ((void*)0);
   map.type = DAT_CONVERTER_LIST_MAP;

   if (!target)
   {
      dat_converter_map_t map;
      target = dat_converter_list_create(DAT_CONVERTER_MAP_LIST);
      map.key = ((void*)0);
      map.type = DAT_CONVERTER_LIST_MAP;
      map.value.list = ((void*)0);
      dat_converter_list_append(target, &map);
   }

   while (current->token.label)
   {
      if (!map.key)
      {
         if (string_is_equal(current->token.label, "game"))
            skip = 0;
         map.key = current->token.label;
         current++;
      }
      else
      {
         if (string_is_equal(current->token.label, "("))
         {
            current++;
            map.value.list = dat_parser_table(&current);
            if (!skip)
            {
               if (match_key)
               {
                  map.key = dat_converter_get_match(map.value.list, match_key);

                  if (!map.key)
                  {
                     if (warning_displayed == 0)
                     {
                        printf("    - Missing match key '");
                        while (match_key->next)
                        {
                           printf("%s.", match_key->value);
                           match_key = match_key->next;
                        }
                        printf("%s' on line %d\n", match_key->value, current->token.line_no);
                        warning_displayed = 1;
                     }
                     skip = 1;
                  }
               }
               else
                  map.key = ((void*)0);


               if (!skip) {
                  dat_converter_list_append(target, &map);
                  skip = 1;
               }
            }
            else
               dat_converter_list_free(map.value.list);

            map.key = ((void*)0);
         }
         else
         {
            printf("%s:%d:%d: fatal error: Expected '(' found '%s'\n",
                   current->token.fname,
                   current->token.line_no,
                   current->token.column,
                   current->token.label);
            dat_converter_exit(1);
         }
      }
   }
   return target;
}
