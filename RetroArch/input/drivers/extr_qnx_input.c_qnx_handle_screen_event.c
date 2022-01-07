
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_7__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int screen_event_t ;
typedef int screen_device_t ;
struct TYPE_11__ {TYPE_7__* devices; } ;
typedef TYPE_1__ qnx_input_t ;
typedef int bps_event_t ;
struct TYPE_12__ {int id; int handle; } ;


 int DEFAULT_MAX_PADS ;
 int RARCH_LOG (char*,int ) ;







 int SCREEN_PROPERTY_ATTACHED ;
 int SCREEN_PROPERTY_DEVICE ;
 int SCREEN_PROPERTY_TYPE ;
 int qnx_handle_device (TYPE_1__*,TYPE_7__*) ;
 int qnx_init_controller (TYPE_1__*,TYPE_7__*) ;
 int qnx_process_gamepad_event (TYPE_1__*,int ,int) ;
 int qnx_process_joystick_event (TYPE_1__*,int ,int) ;
 int qnx_process_keyboard_event (TYPE_1__*,int ,int) ;
 int qnx_process_touch_event (TYPE_1__*,int ,int) ;
 int screen_event_get_event (int *) ;
 int screen_get_device_property_iv (int ,int ,int*) ;
 int screen_get_event_property_iv (int ,int ,int*) ;
 int screen_get_event_property_pv (int ,int ,void**) ;

__attribute__((used)) static void qnx_handle_screen_event(qnx_input_t *qnx, bps_event_t *event)
{
   int type;
   screen_event_t screen_event = screen_event_get_event(event);

   screen_get_event_property_iv(screen_event, SCREEN_PROPERTY_TYPE, &type);

   switch(type)
   {
      case 128:
      case 129:
      case 130:
         qnx_process_touch_event(qnx, screen_event, type);
         break;
      case 131:
         qnx_process_keyboard_event(qnx, screen_event, type);
         break;
      default:
         break;
   }
}
