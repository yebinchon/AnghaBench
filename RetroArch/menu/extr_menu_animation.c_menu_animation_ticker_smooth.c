
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* src_str; int dst_str_len; int field_width; int glyph_width; char* dst_str; unsigned int* dst_str_width; char* spacer; int type_enum; scalar_t__* x_offset; int idx; int font_scale; int font; int selected; } ;
typedef TYPE_1__ menu_animation_ctx_ticker_smooth_t ;




 int build_ticker_loop_string (char*,char*,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,char*,int) ;
 scalar_t__ calloc (size_t,int) ;
 int font_driver_get_message_width (int ,char const*,int,int ) ;
 int free (unsigned int*) ;
 int menu_animation_ticker_smooth_fw (TYPE_1__*) ;
 int menu_animation_ticker_smooth_generic (int ,unsigned int*,size_t,unsigned int,int,unsigned int*,unsigned int*,scalar_t__*,unsigned int*) ;
 int menu_animation_ticker_smooth_loop (int ,unsigned int*,size_t,unsigned int*,size_t,unsigned int,unsigned int,int,unsigned int*,unsigned int*,unsigned int*,unsigned int*,unsigned int*,unsigned int*,scalar_t__*,unsigned int*) ;
 scalar_t__ string_is_empty (char*) ;
 int strlcat (char*,char*,int) ;
 int ticker_is_active ;
 char* ticker_spacer_default ;
 int utf8cpy (char*,int,char*,unsigned int) ;
 size_t utf8len (char*) ;
 char* utf8skip (char const*,unsigned int) ;

bool menu_animation_ticker_smooth(menu_animation_ctx_ticker_smooth_t *ticker)
{
   size_t i;
   size_t src_str_len = 0;
   size_t spacer_len = 0;
   unsigned src_str_width = 0;
   unsigned spacer_width = 0;
   unsigned *src_char_widths = ((void*)0);
   unsigned *spacer_char_widths = ((void*)0);
   const char *str_ptr = ((void*)0);
   bool success = 0;
   bool is_active = 0;


   if (string_is_empty(ticker->src_str) ||
       (ticker->dst_str_len < 1) ||
       (ticker->field_width < 1) ||
       (!ticker->font && (ticker->glyph_width < 1)))
      goto end;



   if (!ticker->font)
      return menu_animation_ticker_smooth_fw(ticker);



   src_str_len = utf8len(ticker->src_str);
   if (src_str_len < 1)
      goto end;

   src_char_widths = (unsigned*)calloc(src_str_len, sizeof(unsigned));
   if (!src_char_widths)
      goto end;

   str_ptr = ticker->src_str;
   for (i = 0; i < src_str_len; i++)
   {
      int glyph_width = font_driver_get_message_width(
            ticker->font, str_ptr, 1, ticker->font_scale);

      if (glyph_width < 0)
         goto end;

      src_char_widths[i] = (unsigned)glyph_width;
      src_str_width += (unsigned)glyph_width;

      str_ptr = utf8skip(str_ptr, 1);
   }



   if (src_str_width <= ticker->field_width)
   {
      utf8cpy(ticker->dst_str, ticker->dst_str_len, ticker->src_str, src_str_len);

      if (ticker->dst_str_width)
         *ticker->dst_str_width = src_str_width;
      *ticker->x_offset = 0;
      success = 1;
      goto end;
   }



   if (!ticker->selected)
   {
      unsigned text_width;
      unsigned current_width = 0;
      unsigned num_chars = 0;
      int period_width =
            font_driver_get_message_width(ticker->font, ".", 1, ticker->font_scale);


      if (period_width < 0)
         goto end;

      if (ticker->field_width < (3 * period_width))
         goto end;


      text_width = ticker->field_width - (3 * period_width);
      while (1)
      {
         current_width += src_char_widths[num_chars];

         if (current_width > text_width)
         {


            current_width -= src_char_widths[num_chars];
            break;
         }

         num_chars++;
      }


      utf8cpy(ticker->dst_str, ticker->dst_str_len, ticker->src_str, num_chars);
      strlcat(ticker->dst_str, "...", ticker->dst_str_len);

      if (ticker->dst_str_width)
         *ticker->dst_str_width = current_width + (3 * period_width);
      *ticker->x_offset = 0;
      success = 1;
      goto end;
   }





   if (!ticker->spacer)
      ticker->spacer = ticker_spacer_default;



   spacer_len = utf8len(ticker->spacer);
   if (spacer_len < 1)
      goto end;

   spacer_char_widths = (unsigned*)calloc(spacer_len, sizeof(unsigned));
   if (!spacer_char_widths)
      goto end;

   str_ptr = ticker->spacer;
   for (i = 0; i < spacer_len; i++)
   {
      int glyph_width = font_driver_get_message_width(
            ticker->font, str_ptr, 1, ticker->font_scale);

      if (glyph_width < 0)
         goto end;

      spacer_char_widths[i] = (unsigned)glyph_width;
      spacer_width += (unsigned)glyph_width;

      str_ptr = utf8skip(str_ptr, 1);
   }


   switch (ticker->type_enum)
   {
      case 128:
      {
         unsigned char_offset1 = 0;
         unsigned num_chars1 = 0;
         unsigned char_offset2 = 0;
         unsigned num_chars2 = 0;
         unsigned char_offset3 = 0;
         unsigned num_chars3 = 0;

         menu_animation_ticker_smooth_loop(
               ticker->idx,
               src_char_widths, src_str_len,
               spacer_char_widths, spacer_len,
               src_str_width, spacer_width, ticker->field_width,
               &char_offset1, &num_chars1,
               &char_offset2, &num_chars2,
               &char_offset3, &num_chars3,
               ticker->x_offset, ticker->dst_str_width);

         build_ticker_loop_string(
               ticker->src_str, ticker->spacer,
               char_offset1, num_chars1,
               char_offset2, num_chars2,
               char_offset3, num_chars3,
               ticker->dst_str, ticker->dst_str_len);

         break;
      }
      case 129:
      default:
      {
         unsigned char_offset = 0;
         unsigned num_chars = 0;

         ticker->dst_str[0] = '\0';

         menu_animation_ticker_smooth_generic(
               ticker->idx,
               src_char_widths, src_str_len, src_str_width, ticker->field_width,
               &char_offset, &num_chars, ticker->x_offset, ticker->dst_str_width);


         if (num_chars > 0)
         {
            utf8cpy(
                  ticker->dst_str, ticker->dst_str_len,
                  utf8skip(ticker->src_str, char_offset), num_chars);
         }

         break;
      }
   }

   success = 1;
   is_active = 1;
   ticker_is_active = 1;

end:

   if (src_char_widths)
   {
      free(src_char_widths);
      src_char_widths = ((void*)0);
   }

   if (spacer_char_widths)
   {
      free(spacer_char_widths);
      spacer_char_widths = ((void*)0);
   }

   if (!success)
   {
      *ticker->x_offset = 0;

      if (ticker->dst_str_len > 0)
         ticker->dst_str[0] = '\0';
   }

   return is_active;
}
