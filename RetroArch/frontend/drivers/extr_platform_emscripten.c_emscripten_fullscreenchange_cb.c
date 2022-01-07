
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int EmscriptenFullscreenChangeEvent ;
typedef int EM_BOOL ;


 int EM_TRUE ;
 int emscripten_fullscreen_reinit ;

__attribute__((used)) static EM_BOOL emscripten_fullscreenchange_cb(int event_type,
   const EmscriptenFullscreenChangeEvent *fullscreen_change_event,
   void *user_data)
{
   (void)event_type;
   (void)fullscreen_change_event;
   (void)user_data;

   emscripten_fullscreen_reinit = 5;

   return EM_TRUE;
}
