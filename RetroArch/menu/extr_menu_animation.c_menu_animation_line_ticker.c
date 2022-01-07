
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct string_list {int size; } ;
struct TYPE_3__ {char* str; int line_len; int max_lines; char* s; int type_enum; int len; int idx; } ;
typedef TYPE_1__ menu_animation_ctx_line_ticker_t ;




 int build_line_ticker_string (int,size_t,struct string_list*,char*,int ) ;
 int free (char*) ;
 scalar_t__ malloc (int) ;
 int menu_animation_line_ticker_generic (int ,int,int,int,size_t*) ;
 int menu_animation_line_ticker_loop (int ,int,int,size_t*) ;
 scalar_t__ string_is_empty (char*) ;
 int string_list_free (struct string_list*) ;
 struct string_list* string_split (char*,char*) ;
 int strlcpy (char*,char*,int ) ;
 int strlen (char*) ;
 int ticker_is_active ;
 int word_wrap (char*,char*,int,int,int ) ;

bool menu_animation_line_ticker(menu_animation_ctx_line_ticker_t *line_ticker)
{
   char *wrapped_str = ((void*)0);
   struct string_list *lines = ((void*)0);
   size_t line_offset = 0;
   bool success = 0;
   bool is_active = 0;


   if (!line_ticker)
      return 0;

   if (string_is_empty(line_ticker->str) ||
       (line_ticker->line_len < 1) ||
       (line_ticker->max_lines < 1))
      goto end;


   wrapped_str = (char*)malloc((strlen(line_ticker->str) + 1) * sizeof(char));
   if (!wrapped_str)
      goto end;

   word_wrap(
         wrapped_str,
         line_ticker->str,
         (int)line_ticker->line_len,
         1, 0);

   if (string_is_empty(wrapped_str))
      goto end;


   lines = string_split(wrapped_str, "\n");
   if (!lines)
      goto end;



   if (lines->size <= line_ticker->max_lines)
   {
      strlcpy(line_ticker->s, wrapped_str, line_ticker->len);
      success = 1;
      goto end;
   }


   switch (line_ticker->type_enum)
   {
      case 128:
      {
         menu_animation_line_ticker_loop(
               line_ticker->idx,
               line_ticker->line_len,
               lines->size,
               &line_offset);

         break;
      }
      case 129:
      default:
      {
         menu_animation_line_ticker_generic(
               line_ticker->idx,
               line_ticker->line_len,
               line_ticker->max_lines,
               lines->size,
               &line_offset);

         break;
      }
   }


   build_line_ticker_string(
      line_ticker->max_lines, line_offset, lines,
      line_ticker->s, line_ticker->len);

   success = 1;
   is_active = 1;
   ticker_is_active = 1;

end:

   if (wrapped_str)
   {
      free(wrapped_str);
      wrapped_str = ((void*)0);
   }

   if (lines)
   {
      string_list_free(lines);
      lines = ((void*)0);
   }

   if (!success)
      if (line_ticker->len > 0)
         line_ticker->s[0] = '\0';

   return is_active;
}
