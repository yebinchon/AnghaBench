
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int qnx_input_t ;
typedef int navigator_window_state_t ;
typedef int bps_event_t ;


 int CMD_EVENT_MENU_TOGGLE ;
 int RARCH_CTL_SET_SHUTDOWN ;
 int RETROK_BACKSPACE ;
 int RETRO_DEVICE_KEYBOARD ;
 int bps_event_get_code (int *) ;
 int bps_get_event (int **,int) ;
 int command_event (int ,int *) ;
 int input_keyboard_event (int,int ,int ,int ,int ) ;
 int navigator_event_get_syskey_key (int *) ;
 int navigator_event_get_window_state (int *) ;
 int rarch_ctl (int ,int *) ;

__attribute__((used)) static void qnx_handle_navigator_event(
      qnx_input_t *qnx, bps_event_t *event)
{
   navigator_window_state_t state;
   bps_event_t *event_pause = ((void*)0);

   switch (bps_event_get_code(event))
   {
      case 133:
         switch(navigator_event_get_syskey_key(event))
         {
            case 135:
               input_keyboard_event(1, RETROK_BACKSPACE, 0, 0, RETRO_DEVICE_KEYBOARD);
               input_keyboard_event(0, RETROK_BACKSPACE, 0, 0, RETRO_DEVICE_KEYBOARD);
               break;
            case 132:
            case 134:
               break;
            default:
               break;
         }
         break;
      case 136:
         command_event(CMD_EVENT_MENU_TOGGLE, ((void*)0));
         break;
      case 129:
         switch(navigator_event_get_window_state(event))
         {
            case 128:
            case 130:
               while(1)
               {
                  unsigned event_code;


                  bps_get_event(&event_pause, -1);
                  event_code = bps_event_get_code(event_pause);

                  if(event_code == 129)
                  {
                     if(navigator_event_get_window_state(event_pause) == 131)
                        break;
                  }
                  else if(event_code == 137)
                     goto shutdown;
               }
               break;
            case 131:
               break;
         }
         break;
     case 137:
        goto shutdown;
      default:
         break;
   }

   return;

   togglemenu:
       command_event(CMD_EVENT_MENU_TOGGLE, ((void*)0));
       return;
   shutdown:
       rarch_ctl(RARCH_CTL_SET_SHUTDOWN, ((void*)0));
       return;
}
