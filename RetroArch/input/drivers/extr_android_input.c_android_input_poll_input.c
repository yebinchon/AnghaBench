
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct android_app {int inputQueue; } ;
typedef int int32_t ;
typedef int android_input_t ;
typedef int AInputEvent ;




 int AInputEvent_getSource (int *) ;
 int AInputEvent_getType (int *) ;
 int AInputQueue_finishEvent (int ,int *,int) ;
 scalar_t__ AInputQueue_getEvent (int ,int **) ;
 scalar_t__ AInputQueue_hasEvents (int ) ;
 int AInputQueue_preDispatchEvent (int ,int *) ;
 int AKeyEvent_getKeyCode (int *) ;
 int ANDROID_KEYBOARD_PORT ;
 int android_input_get_id (int *) ;
 int android_input_get_id_port (int *,int,int) ;
 int android_input_poll_event_type_key (struct android_app*,int *,int,int,int,int,int*) ;
 int android_input_poll_event_type_keyboard (int *,int,int*) ;
 int android_input_poll_event_type_motion (int *,int *,int,int) ;
 int engine_handle_dpad (int *,int *,int,int) ;
 scalar_t__ g_android ;
 int handle_hotplug (int *,struct android_app*,int*,int,int) ;
 scalar_t__ is_keyboard_id (int) ;

__attribute__((used)) static void android_input_poll_input(android_input_t *android)
{
   AInputEvent *event = ((void*)0);
   struct android_app *android_app = (struct android_app*)g_android;


   while (AInputQueue_hasEvents(android_app->inputQueue))
   {
      while (AInputQueue_getEvent(android_app->inputQueue, &event) >= 0)
      {
         int32_t handled = 1;
         int predispatched = AInputQueue_preDispatchEvent(android_app->inputQueue, event);
         int source = AInputEvent_getSource(event);
         int type_event = AInputEvent_getType(event);
         int id = android_input_get_id(event);
         int port = android_input_get_id_port(android, id, source);

         if (port < 0 && !is_keyboard_id(id))
            handle_hotplug(android, android_app,
            &port, id, source);

         switch (type_event)
         {
            case 128:
               if (android_input_poll_event_type_motion(android, event,
                        port, source))
                  engine_handle_dpad(android, event, port, source);
               break;
            case 129:
               {
                  int keycode = AKeyEvent_getKeyCode(event);

                  if (is_keyboard_id(id))
                  {
                     if (!predispatched)
                     {
                        android_input_poll_event_type_keyboard(event, keycode, &handled);
                        android_input_poll_event_type_key(android_app, event, ANDROID_KEYBOARD_PORT, keycode, source, type_event, &handled);
                     }
                  }
                  else
                     android_input_poll_event_type_key(android_app,
                        event, port, keycode, source, type_event, &handled);
               }
               break;
         }

         if (!predispatched)
            AInputQueue_finishEvent(android_app->inputQueue, event,
                  handled);
      }
   }
}
