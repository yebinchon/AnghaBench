
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ TICKER_SPEED ;

__attribute__((used)) static size_t get_line_display_ticks(size_t line_len)
{


   float cpm = 1000.0f;

   float line_duration = (line_len * 60.0f * 1000.0f * 1000.0f) / cpm;


   return (size_t)(line_duration / (float)TICKER_SPEED);
}
