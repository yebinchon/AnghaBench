
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct string_list {size_t size; } ;
struct TYPE_3__ {char* src_str; int field_width; int field_height; char* dst_str; float* y_offset; char* top_fade_str; char* bottom_fade_str; float* top_fade_y_offset; float* bottom_fade_y_offset; float* top_fade_alpha; float* bottom_fade_alpha; int type_enum; int bottom_fade_str_len; int top_fade_str_len; scalar_t__ fade_enabled; int dst_str_len; int idx; int font_scale; int font; } ;
typedef TYPE_1__ menu_animation_ctx_line_ticker_smooth_t ;




 int build_line_ticker_string (int,size_t,struct string_list*,char*,int ) ;
 int font_driver_get_line_height (int ,int ) ;
 int font_driver_get_message_width (int ,char*,int,int ) ;
 int free (char*) ;
 scalar_t__ malloc (int) ;
 int menu_animation_line_ticker_smooth_generic (int ,scalar_t__,size_t,size_t,size_t,size_t,size_t*,size_t*,float*,int*,size_t*,float*,float*,size_t*,float*,float*) ;
 int menu_animation_line_ticker_smooth_loop (int ,scalar_t__,size_t,size_t,size_t,size_t,size_t*,size_t*,float*,int*,size_t*,float*,float*,size_t*,float*,float*) ;
 scalar_t__ string_is_empty (char*) ;
 int string_list_free (struct string_list*) ;
 struct string_list* string_split (char*,char*) ;
 int strlcpy (char*,char*,int ) ;
 int strlen (char*) ;
 int ticker_is_active ;
 int word_wrap (char*,char*,int,int,int ) ;

bool menu_animation_line_ticker_smooth(menu_animation_ctx_line_ticker_smooth_t *line_ticker)
{
   char *wrapped_str = ((void*)0);
   struct string_list *lines = ((void*)0);
   int glyph_width = 0;
   int glyph_height = 0;
   size_t line_len = 0;
   size_t max_display_lines = 0;
   size_t num_display_lines = 0;
   size_t line_offset = 0;
   size_t top_fade_line_offset = 0;
   size_t bottom_fade_line_offset = 0;
   bool fade_active = 0;
   bool success = 0;
   bool is_active = 0;


   if (!line_ticker)
      return 0;

   if (!line_ticker->font ||
       string_is_empty(line_ticker->src_str) ||
       (line_ticker->field_width < 1) ||
       (line_ticker->field_height < 1))
      goto end;
   glyph_width = font_driver_get_message_width(
         line_ticker->font, "a", 1, line_ticker->font_scale);

   if (glyph_width < 0)
      goto end;


   glyph_height = font_driver_get_line_height(
         line_ticker->font, line_ticker->font_scale);

   if (glyph_height < 0)
      goto end;


   line_len = (size_t)(line_ticker->field_width / glyph_width);
   max_display_lines = (size_t)(line_ticker->field_height / glyph_height);

   if ((line_len < 1) || (max_display_lines < 1))
      goto end;


   wrapped_str = (char*)malloc((strlen(line_ticker->src_str) + 1) * sizeof(char));
   if (!wrapped_str)
      goto end;

   word_wrap(
         wrapped_str,
         line_ticker->src_str,
         (int)line_len,
         1, 0);

   if (string_is_empty(wrapped_str))
      goto end;


   lines = string_split(wrapped_str, "\n");
   if (!lines)
      goto end;



   if (lines->size <= max_display_lines)
   {
      strlcpy(line_ticker->dst_str, wrapped_str, line_ticker->dst_str_len);
      *line_ticker->y_offset = 0.0f;


      if (line_ticker->fade_enabled)
      {
         if (line_ticker->top_fade_str_len > 0)
            line_ticker->top_fade_str[0] = '\0';

         if (line_ticker->bottom_fade_str_len > 0)
            line_ticker->bottom_fade_str[0] = '\0';

         *line_ticker->top_fade_y_offset = 0.0f;
         *line_ticker->bottom_fade_y_offset = 0.0f;

         *line_ticker->top_fade_alpha = 0.0f;
         *line_ticker->bottom_fade_alpha = 0.0f;
      }

      success = 1;
      goto end;
   }



   switch (line_ticker->type_enum)
   {
      case 128:
      {
         menu_animation_line_ticker_smooth_loop(
               line_ticker->idx,
               line_ticker->fade_enabled,
               line_len, (size_t)glyph_height,
               max_display_lines, lines->size,
               &num_display_lines, &line_offset, line_ticker->y_offset,
               &fade_active,
               &top_fade_line_offset, line_ticker->top_fade_y_offset, line_ticker->top_fade_alpha,
               &bottom_fade_line_offset, line_ticker->bottom_fade_y_offset, line_ticker->bottom_fade_alpha);

         break;
      }
      case 129:
      default:
      {
         menu_animation_line_ticker_smooth_generic(
               line_ticker->idx,
               line_ticker->fade_enabled,
               line_len, (size_t)glyph_height,
               max_display_lines, lines->size,
               &num_display_lines, &line_offset, line_ticker->y_offset,
               &fade_active,
               &top_fade_line_offset, line_ticker->top_fade_y_offset, line_ticker->top_fade_alpha,
               &bottom_fade_line_offset, line_ticker->bottom_fade_y_offset, line_ticker->bottom_fade_alpha);

         break;
      }
   }


   build_line_ticker_string(
         num_display_lines, line_offset, lines,
         line_ticker->dst_str, line_ticker->dst_str_len);


   if (fade_active)
   {



      build_line_ticker_string(
            1, top_fade_line_offset, lines,
            line_ticker->top_fade_str, line_ticker->top_fade_str_len);

      build_line_ticker_string(
            1, bottom_fade_line_offset, lines,
            line_ticker->bottom_fade_str, line_ticker->bottom_fade_str_len);
   }

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
   {
      if (line_ticker->dst_str_len > 0)
         line_ticker->dst_str[0] = '\0';

      if (line_ticker->fade_enabled)
      {
         if (line_ticker->top_fade_str_len > 0)
            line_ticker->top_fade_str[0] = '\0';

         if (line_ticker->bottom_fade_str_len > 0)
            line_ticker->bottom_fade_str[0] = '\0';

         *line_ticker->top_fade_alpha = 0.0f;
         *line_ticker->bottom_fade_alpha = 0.0f;
      }
   }

   return is_active;
}
