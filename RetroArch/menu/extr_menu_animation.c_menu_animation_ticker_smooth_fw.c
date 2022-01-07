
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned int glyph_width; unsigned int field_width; char* dst_str; scalar_t__ dst_str_len; unsigned int* dst_str_width; int type_enum; scalar_t__* x_offset; scalar_t__ src_str; int idx; scalar_t__ spacer; int selected; } ;
typedef TYPE_1__ menu_animation_ctx_ticker_smooth_t ;




 int build_ticker_loop_string (scalar_t__,scalar_t__,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,unsigned int,char*,scalar_t__) ;
 int menu_animation_ticker_smooth_generic_fw (int ,unsigned int,size_t,unsigned int,unsigned int,unsigned int*,unsigned int*,scalar_t__*) ;
 int menu_animation_ticker_smooth_loop_fw (int ,unsigned int,size_t,unsigned int,size_t,unsigned int,unsigned int,unsigned int*,unsigned int*,unsigned int*,unsigned int*,unsigned int*,unsigned int*,scalar_t__*) ;
 int strlcat (char*,char*,scalar_t__) ;
 int ticker_is_active ;
 scalar_t__ ticker_spacer_default ;
 int utf8cpy (char*,scalar_t__,scalar_t__,unsigned int) ;
 size_t utf8len (scalar_t__) ;
 scalar_t__ utf8skip (scalar_t__,unsigned int) ;

bool menu_animation_ticker_smooth_fw(menu_animation_ctx_ticker_smooth_t *ticker)
{
   size_t src_str_len = 0;
   size_t spacer_len = 0;
   unsigned glyph_width = ticker->glyph_width;
   unsigned src_str_width = 0;
   unsigned spacer_width = 0;
   bool success = 0;
   bool is_active = 0;






   src_str_len = utf8len(ticker->src_str);
   if (src_str_len < 1)
      goto end;

   src_str_width = src_str_len * glyph_width;



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
      unsigned num_chars = 0;
      unsigned suffix_len = 3;
      unsigned suffix_width = suffix_len * glyph_width;


      if (ticker->field_width < suffix_width)
         goto end;


      num_chars = (ticker->field_width - suffix_width) / glyph_width;


      utf8cpy(ticker->dst_str, ticker->dst_str_len, ticker->src_str, num_chars);
      strlcat(ticker->dst_str, "...", ticker->dst_str_len);

      if (ticker->dst_str_width)
         *ticker->dst_str_width = (num_chars * glyph_width) + suffix_width;
      *ticker->x_offset = 0;
      success = 1;
      goto end;
   }





   if (!ticker->spacer)
      ticker->spacer = ticker_spacer_default;


   spacer_len = utf8len(ticker->spacer);
   if (spacer_len < 1)
      goto end;

   spacer_width = spacer_len * glyph_width;


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

         menu_animation_ticker_smooth_loop_fw(
               ticker->idx,
               src_str_width, src_str_len, spacer_width, spacer_len,
               glyph_width, ticker->field_width,
               &char_offset1, &num_chars1,
               &char_offset2, &num_chars2,
               &char_offset3, &num_chars3,
               ticker->x_offset);

         build_ticker_loop_string(
               ticker->src_str, ticker->spacer,
               char_offset1, num_chars1,
               char_offset2, num_chars2,
               char_offset3, num_chars3,
               ticker->dst_str, ticker->dst_str_len);

         if (ticker->dst_str_width)
            *ticker->dst_str_width = (num_chars1 + num_chars2 + num_chars3) * glyph_width;

         break;
      }
      case 129:
      default:
      {
         unsigned char_offset = 0;
         unsigned num_chars = 0;

         ticker->dst_str[0] = '\0';

         menu_animation_ticker_smooth_generic_fw(
               ticker->idx,
               src_str_width, src_str_len, glyph_width, ticker->field_width,
               &char_offset, &num_chars, ticker->x_offset);


         if (num_chars > 0)
         {
            utf8cpy(
                  ticker->dst_str, ticker->dst_str_len,
                  utf8skip(ticker->src_str, char_offset), num_chars);
         }

         if (ticker->dst_str_width)
            *ticker->dst_str_width = num_chars * glyph_width;

         break;
      }
   }

   success = 1;
   is_active = 1;
   ticker_is_active = 1;

end:

   if (!success)
   {
      *ticker->x_offset = 0;

      if (ticker->dst_str_len > 0)
         ticker->dst_str[0] = '\0';
   }

   return is_active;
}
