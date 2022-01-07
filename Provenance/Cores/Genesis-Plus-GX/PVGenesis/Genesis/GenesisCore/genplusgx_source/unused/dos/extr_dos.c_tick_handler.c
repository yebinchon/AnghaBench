
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int FRAMES_PER_SECOND ;
 scalar_t__ frame_rate ;
 scalar_t__ frames_rendered ;
 int tick_count ;

void tick_handler(void)
{
  tick_count += 1;
  if(tick_count % FRAMES_PER_SECOND == 0)
  {
    frame_rate = frames_rendered;
    frames_rendered = 0;
  }
}
