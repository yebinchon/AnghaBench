
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



__attribute__((used)) static void menu_animation_ticker_loop(uint64_t idx,
      size_t max_width, size_t str_width, size_t spacer_width,
      size_t *offset1, size_t *width1,
      size_t *offset2, size_t *width2,
      size_t *offset3, size_t *width3)
{
   int ticker_period = (int)(str_width + spacer_width);
   int phase = idx % ticker_period;




   int offset;
   int width;
   offset = (phase < (int)str_width) ? phase : 0;
   width = (int)(str_width - phase);
   width = (width < 0) ? 0 : width;
   width = (width > (int)max_width) ? (int)max_width : width;

   *offset1 = offset;
   *width1 = width;


   offset = (int)(phase - str_width);
   offset = offset < 0 ? 0 : offset;
   width = (int)(max_width - *width1);
   width = (width > (int)spacer_width) ? (int)spacer_width : width;
   width = width - offset;

   *offset2 = offset;
   *width2 = width;


   width = (int)(max_width - (*width1 + *width2));
   width = width < 0 ? 0 : width;




   *offset3 = 0;
   *width3 = width;
}
