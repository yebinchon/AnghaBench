#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ uint8_t ;
typedef  scalar_t__ uint32_t ;
struct iohidmanager_hid_adapter {size_t slot; TYPE_2__* buttons; TYPE_2__* axes; TYPE_2__* hats; } ;
struct TYPE_3__ {int** hats; float** axes; int /*<<< orphan*/ * buttons; } ;
typedef  TYPE_1__ iohidmanager_hid_t ;
struct TYPE_4__ {scalar_t__ cookie; size_t id; struct TYPE_4__* next; } ;
typedef  TYPE_2__ apple_input_rec_t ;
typedef  int /*<<< orphan*/  IOReturn ;
typedef  int /*<<< orphan*/  IOHIDValueRef ;
typedef  int /*<<< orphan*/  IOHIDElementRef ;
typedef  scalar_t__ IOHIDElementCookie ;
typedef  int CFIndex ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC12 () ; 
#define  kHIDPage_Button 134 
#define  kHIDPage_Consumer 133 
#define  kHIDPage_GenericDesktop 132 
#define  kHIDPage_Simulation 131 
#define  kHIDUsage_GD_Hatswitch 130 
 scalar_t__ kIOHIDElementTypeInput_Axis ; 
#define  kIOHIDElementTypeInput_Button 129 
#define  kIOHIDElementTypeInput_Misc 128 

__attribute__((used)) static void FUNC13(void *data, IOReturn result,
      void* sender, IOHIDValueRef value)
{
   iohidmanager_hid_t *hid                  = (iohidmanager_hid_t*)FUNC12();
   struct iohidmanager_hid_adapter *adapter = (struct iohidmanager_hid_adapter*)data;
   IOHIDElementRef element                  = FUNC10(value);
   uint32_t type                            = (uint32_t)FUNC7(element);
   uint32_t page                            = (uint32_t)FUNC9(element);
   uint32_t use                             = (uint32_t)FUNC8(element);
   uint32_t cookie                          = (uint32_t)FUNC2(element);
   apple_input_rec_t *tmp                   = NULL;

   if (type != kIOHIDElementTypeInput_Misc)
      if (type != kIOHIDElementTypeInput_Button)
         if (type != kIOHIDElementTypeInput_Axis)
            return;

   /* Joystick handler.
    * TODO: Can GamePad work the same? */

   int pushed_button = 0;

   switch (page)
   {
      case kHIDPage_GenericDesktop:
         switch (type)
         {
            case kIOHIDElementTypeInput_Misc:
               switch (use)
               {
                  case kHIDUsage_GD_Hatswitch:
                     {
                        tmp = adapter->hats;

                        while (tmp && tmp->cookie != (IOHIDElementCookie)cookie)
                           tmp = tmp->next;

                        if (tmp->cookie == (IOHIDElementCookie)cookie)
                        {
                           CFIndex min = FUNC4(element);
                           CFIndex range = FUNC3(element) - min;
                           CFIndex val   = FUNC11(value);

                           if (range == 3)
                              val *= 2;

                           if(min == 1)
                              val--;

                           switch(val)
                           {
                              case 0:
                                 /* pos = up */
                                 hid->hats[adapter->slot][0] = 0;
                                 hid->hats[adapter->slot][1] = -1;
                                 break;
                              case 1:
                                 /* pos = up+right */
                                 hid->hats[adapter->slot][0] = 1;
                                 hid->hats[adapter->slot][1] = -1;
                                 break;
                              case 2:
                                 /* pos = right */
                                 hid->hats[adapter->slot][0] = 1;
                                 hid->hats[adapter->slot][1] = 0;
                                 break;
                              case 3:
                                 /* pos = down+right */
                                 hid->hats[adapter->slot][0] = 1;
                                 hid->hats[adapter->slot][1] = 1;
                                 break;
                              case 4:
                                 /* pos = down */
                                 hid->hats[adapter->slot][0] = 0;
                                 hid->hats[adapter->slot][1] = 1;
                                 break;
                              case 5:
                                 /* pos = down+left */
                                 hid->hats[adapter->slot][0] = -1;
                                 hid->hats[adapter->slot][1] = 1;
                                 break;
                              case 6:
                                 /* pos = left */
                                 hid->hats[adapter->slot][0] = -1;
                                 hid->hats[adapter->slot][1] = 0;
                                 break;
                              case 7:
                                 /* pos = up_left */
                                 hid->hats[adapter->slot][0] = -1;
                                 hid->hats[adapter->slot][1] = -1;
                                 break;
                              default:
                                 /* pos = centered */
                                 hid->hats[adapter->slot][0] = 0;
                                 hid->hats[adapter->slot][1] = 0;
                                 break;
                           }
                        }
                     }
                     break;
                  default:
                     tmp = adapter->axes;

                     while (tmp && tmp->cookie != (IOHIDElementCookie)cookie)
                        tmp = tmp->next;

                     if (tmp)
                     {
                        if (tmp->cookie == (IOHIDElementCookie)cookie)
                        {
                           CFIndex min   = FUNC6(element);
                           CFIndex state = FUNC11(value) - min;
                           CFIndex max   = FUNC5(element) - min;
                           float val     = (float)state / (float)max;

                           hid->axes[adapter->slot][tmp->id] =
                              ((val * 2.0f) - 1.0f) * 32767.0f;
                        }
                     }
                     else
                        pushed_button = 1;
                     break;
               }
               break;
         }
         break;
      case kHIDPage_Consumer:
      case kHIDPage_Button:
         switch (type)
         {
            case kIOHIDElementTypeInput_Misc:
            case kIOHIDElementTypeInput_Button:
               pushed_button = 1;
               break;
         }
         break;
      case kHIDPage_Simulation:
          switch (type)
          {
             case kIOHIDElementTypeInput_Misc:
                 switch (use)
                 {
                 default:
                     tmp = adapter->axes;

                     while (tmp && tmp->cookie != (IOHIDElementCookie)cookie)
                     {
                        tmp = tmp->next;
                     }
                     if (tmp)
                     {
                        if (tmp->cookie == (IOHIDElementCookie)cookie)
                        {
                           CFIndex min   = FUNC6(element);
                           CFIndex state = FUNC11(value) - min;
                           CFIndex max   = FUNC5(element) - min;
                           float val     = (float)state / (float)max;

                           hid->axes[adapter->slot][tmp->id] =
                              ((val * 2.0f) - 1.0f) * 32767.0f;
                        }
                     }
                     else
                        pushed_button = 1;
                     break;
                 }
                 break;
          }
          break;
   }

   if (pushed_button)
   {
      uint8_t bit = 0;

      tmp         = adapter->buttons;

      while (tmp && tmp->cookie != (IOHIDElementCookie)cookie)
      {
         bit++;
         tmp = tmp->next;
      }

      if (tmp && tmp->cookie == (IOHIDElementCookie)cookie)
      {
         CFIndex state = FUNC11(value);
         if (state)
            FUNC1(hid->buttons[adapter->slot], bit);
         else
            FUNC0(hid->buttons[adapter->slot], bit);
      }
   }
}