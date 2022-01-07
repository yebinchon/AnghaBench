
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct in_sdl_state {scalar_t__ joy; } ;
typedef int events ;
typedef int Uint32 ;
typedef int SDL_Event ;


 int JOY_EVENTS ;
 int SDL_ALLEVENTS ;
 int SDL_GETEVENT ;
 int SDL_PEEKEVENT ;
 int SDL_PeepEvents (int *,int,int ,int) ;
 int SDL_PumpEvents () ;
 int SDL_PushEvent (int *) ;
 int ext_event_handler (int *) ;
 int handle_event (struct in_sdl_state*,int *,int*,int*) ;
 int handle_joy_event (struct in_sdl_state*,int *,int*,int*) ;

__attribute__((used)) static int collect_events(struct in_sdl_state *state, int *one_kc, int *one_down)
{
 SDL_Event events[4];
 Uint32 mask = state->joy ? JOY_EVENTS : (SDL_ALLEVENTS & ~JOY_EVENTS);
 int count, maxcount;
 int i, ret, retval = 0;
 int num_events, num_peeped_events;
 SDL_Event *event;

 maxcount = (one_kc != ((void*)0)) ? 1 : sizeof(events) / sizeof(events[0]);

 SDL_PumpEvents();

 num_events = SDL_PeepEvents(((void*)0), 0, SDL_PEEKEVENT, mask);

 for (num_peeped_events = 0; num_peeped_events < num_events; num_peeped_events += count) {
  count = SDL_PeepEvents(events, maxcount, SDL_GETEVENT, mask);
  if (count <= 0)
   break;
  for (i = 0; i < count; i++) {
   event = &events[i];
   if (state->joy)
    ret = handle_joy_event(state,
     event, one_kc, one_down);
   else
    ret = handle_event(state,
     event, one_kc, one_down);
   if (ret < 0) {
    switch (ret) {
     case -2:
      SDL_PushEvent(event);
      break;
     default:
      if (ext_event_handler != ((void*)0))
       ext_event_handler(event);
      break;
    }
    continue;
   }

   retval |= ret;
   if (one_kc != ((void*)0) && ret)
   {

    for (i++; i < count; i++)
     SDL_PushEvent(&events[i]);
    goto out;
   }
  }
 }

out:
 return retval;
}
