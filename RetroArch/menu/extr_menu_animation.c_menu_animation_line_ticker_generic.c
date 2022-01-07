
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint64_t ;


 size_t get_line_display_ticks (size_t) ;

__attribute__((used)) static void menu_animation_line_ticker_generic(uint64_t idx,
      size_t line_len, size_t max_lines, size_t num_lines,
      size_t *line_offset)
{
   size_t line_ticks = get_line_display_ticks(line_len);

   size_t excess_lines = num_lines - max_lines;





   size_t ticker_period = (excess_lines * 2) + 2;
   size_t phase = (idx / line_ticks) % ticker_period;


   if (phase > 0)
      phase--;

   if (phase > excess_lines)
      phase--;


   if (phase <= excess_lines)
      *line_offset = phase;

   else
      *line_offset = (excess_lines * 2) - phase;
}
