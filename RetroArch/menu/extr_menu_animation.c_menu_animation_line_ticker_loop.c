
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t uint64_t ;


 size_t get_line_display_ticks (size_t) ;

__attribute__((used)) static void menu_animation_line_ticker_loop(uint64_t idx,
      size_t line_len, size_t num_lines,
      size_t *line_offset)
{
   size_t line_ticks = get_line_display_ticks(line_len);
   size_t ticker_period = num_lines + 1;
   size_t phase = (idx / line_ticks) % ticker_period;


   *line_offset = phase;
}
