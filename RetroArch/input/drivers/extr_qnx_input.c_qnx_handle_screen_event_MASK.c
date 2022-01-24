#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_12__   TYPE_7__ ;
typedef  struct TYPE_11__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  screen_event_t ;
typedef  int /*<<< orphan*/  screen_device_t ;
struct TYPE_11__ {TYPE_7__* devices; } ;
typedef  TYPE_1__ qnx_input_t ;
typedef  int /*<<< orphan*/  bps_event_t ;
struct TYPE_12__ {int /*<<< orphan*/  id; int /*<<< orphan*/  handle; } ;

/* Variables and functions */
 int DEFAULT_MAX_PADS ; 
 int /*<<< orphan*/  FUNC0 (char*,int /*<<< orphan*/ ) ; 
#define  SCREEN_EVENT_DEVICE 134 
#define  SCREEN_EVENT_GAMEPAD 133 
#define  SCREEN_EVENT_JOYSTICK 132 
#define  SCREEN_EVENT_KEYBOARD 131 
#define  SCREEN_EVENT_MTOUCH_MOVE 130 
#define  SCREEN_EVENT_MTOUCH_RELEASE 129 
#define  SCREEN_EVENT_MTOUCH_TOUCH 128 
 int /*<<< orphan*/  SCREEN_PROPERTY_ATTACHED ; 
 int /*<<< orphan*/  SCREEN_PROPERTY_DEVICE ; 
 int /*<<< orphan*/  SCREEN_PROPERTY_TYPE ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_7__*) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,void**) ; 

__attribute__((used)) static void FUNC11(qnx_input_t *qnx, bps_event_t *event)
{
   int type;
   screen_event_t screen_event = FUNC7(event);

   FUNC9(screen_event, SCREEN_PROPERTY_TYPE, &type);

   switch(type)
   {
      case SCREEN_EVENT_MTOUCH_TOUCH:
      case SCREEN_EVENT_MTOUCH_RELEASE:
      case SCREEN_EVENT_MTOUCH_MOVE:
         FUNC6(qnx, screen_event, type);
         break;
      case SCREEN_EVENT_KEYBOARD:
         FUNC5(qnx, screen_event, type);
         break;
#ifdef HAVE_BB10
      case SCREEN_EVENT_GAMEPAD:
         qnx_process_gamepad_event(qnx, screen_event, type);
          break;
      case SCREEN_EVENT_JOYSTICK:
         qnx_process_joystick_event(qnx, screen_event, type);
         break;
      case SCREEN_EVENT_DEVICE:
         {
            /* A device was attached or removed. */
            screen_device_t device;
            int attached, type, i;

            screen_get_event_property_pv(screen_event,
                  SCREEN_PROPERTY_DEVICE, (void**)&device);
            screen_get_event_property_iv(screen_event,
                  SCREEN_PROPERTY_ATTACHED, &attached);

            if (attached)
               screen_get_device_property_iv(device,
                     SCREEN_PROPERTY_TYPE, &type);

            if (attached &&
                  (
                   type == SCREEN_EVENT_GAMEPAD ||
                   type == SCREEN_EVENT_JOYSTICK ||
                   type == SCREEN_EVENT_KEYBOARD)
               )
            {
               for (i = 0; i < DEFAULT_MAX_PADS; ++i)
               {
                  if (!qnx->devices[i].handle)
                  {
                     qnx->devices[i].handle = device;
                     qnx_handle_device(qnx, &qnx->devices[i]);
                     break;
                  }
               }
            }
            else
            {
               for (i = 0; i < DEFAULT_MAX_PADS; ++i)
               {
                  if (device == qnx->devices[i].handle)
                  {
                     RARCH_LOG("Device %s: Disconnected.\n",
                           qnx->devices[i].id);
                     qnx_init_controller(qnx, &qnx->devices[i]);
                     break;
                  }
               }
            }
         }
         break;
#endif
      default:
         break;
   }
}