
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;



__attribute__((used)) static void menu_animation_ticker_generic(uint64_t idx,
      size_t max_width, size_t *offset, size_t *width)
{
   int ticker_period = (int)(2 * (*width - max_width) + 4);
   int phase = idx % ticker_period;

   int phase_left_stop = 2;
   int phase_left_moving = (int)(phase_left_stop + (*width - max_width));
   int phase_right_stop = phase_left_moving + 2;

   int left_offset = phase - phase_left_stop;
   int right_offset = (int)((*width - max_width) - (phase - phase_right_stop));

   if (phase < phase_left_stop)
      *offset = 0;
   else if (phase < phase_left_moving)
      *offset = left_offset;
   else if (phase < phase_right_stop)
      *offset = *width - max_width;
   else
      *offset = right_offset;

   *width = max_width;
}
