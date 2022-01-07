
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SDL_INIT_TIMER ;
 int SDL_Init (int ) ;

void _ps2sdk_time_init(void)
{
   SDL_Init(SDL_INIT_TIMER);
}
