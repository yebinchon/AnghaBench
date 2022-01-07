
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint8_t ;
typedef scalar_t__ uint32_t ;
struct iohidmanager_hid_adapter {size_t slot; TYPE_2__* buttons; TYPE_2__* axes; TYPE_2__* hats; } ;
struct TYPE_3__ {int** hats; float** axes; int * buttons; } ;
typedef TYPE_1__ iohidmanager_hid_t ;
struct TYPE_4__ {scalar_t__ cookie; size_t id; struct TYPE_4__* next; } ;
typedef TYPE_2__ apple_input_rec_t ;
typedef int IOReturn ;
typedef int IOHIDValueRef ;
typedef int IOHIDElementRef ;
typedef scalar_t__ IOHIDElementCookie ;
typedef int CFIndex ;


 int BIT64_CLEAR (int ,scalar_t__) ;
 int BIT64_SET (int ,scalar_t__) ;
 int IOHIDElementGetCookie (int ) ;
 int IOHIDElementGetLogicalMax (int ) ;
 int IOHIDElementGetLogicalMin (int ) ;
 int IOHIDElementGetPhysicalMax (int ) ;
 int IOHIDElementGetPhysicalMin (int ) ;
 int IOHIDElementGetType (int ) ;
 int IOHIDElementGetUsage (int ) ;
 int IOHIDElementGetUsagePage (int ) ;
 int IOHIDValueGetElement (int ) ;
 int IOHIDValueGetIntegerValue (int ) ;
 scalar_t__ hid_driver_get_data () ;





 scalar_t__ kIOHIDElementTypeInput_Axis ;



__attribute__((used)) static void iohidmanager_hid_device_input_callback(void *data, IOReturn result,
      void* sender, IOHIDValueRef value)
{
   iohidmanager_hid_t *hid = (iohidmanager_hid_t*)hid_driver_get_data();
   struct iohidmanager_hid_adapter *adapter = (struct iohidmanager_hid_adapter*)data;
   IOHIDElementRef element = IOHIDValueGetElement(value);
   uint32_t type = (uint32_t)IOHIDElementGetType(element);
   uint32_t page = (uint32_t)IOHIDElementGetUsagePage(element);
   uint32_t use = (uint32_t)IOHIDElementGetUsage(element);
   uint32_t cookie = (uint32_t)IOHIDElementGetCookie(element);
   apple_input_rec_t *tmp = ((void*)0);

   if (type != 128)
      if (type != 129)
         if (type != kIOHIDElementTypeInput_Axis)
            return;




   int pushed_button = 0;

   switch (page)
   {
      case 132:
         switch (type)
         {
            case 128:
               switch (use)
               {
                  case 130:
                     {
                        tmp = adapter->hats;

                        while (tmp && tmp->cookie != (IOHIDElementCookie)cookie)
                           tmp = tmp->next;

                        if (tmp->cookie == (IOHIDElementCookie)cookie)
                        {
                           CFIndex min = IOHIDElementGetLogicalMin(element);
                           CFIndex range = IOHIDElementGetLogicalMax(element) - min;
                           CFIndex val = IOHIDValueGetIntegerValue(value);

                           if (range == 3)
                              val *= 2;

                           if(min == 1)
                              val--;

                           switch(val)
                           {
                              case 0:

                                 hid->hats[adapter->slot][0] = 0;
                                 hid->hats[adapter->slot][1] = -1;
                                 break;
                              case 1:

                                 hid->hats[adapter->slot][0] = 1;
                                 hid->hats[adapter->slot][1] = -1;
                                 break;
                              case 2:

                                 hid->hats[adapter->slot][0] = 1;
                                 hid->hats[adapter->slot][1] = 0;
                                 break;
                              case 3:

                                 hid->hats[adapter->slot][0] = 1;
                                 hid->hats[adapter->slot][1] = 1;
                                 break;
                              case 4:

                                 hid->hats[adapter->slot][0] = 0;
                                 hid->hats[adapter->slot][1] = 1;
                                 break;
                              case 5:

                                 hid->hats[adapter->slot][0] = -1;
                                 hid->hats[adapter->slot][1] = 1;
                                 break;
                              case 6:

                                 hid->hats[adapter->slot][0] = -1;
                                 hid->hats[adapter->slot][1] = 0;
                                 break;
                              case 7:

                                 hid->hats[adapter->slot][0] = -1;
                                 hid->hats[adapter->slot][1] = -1;
                                 break;
                              default:

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
                           CFIndex min = IOHIDElementGetPhysicalMin(element);
                           CFIndex state = IOHIDValueGetIntegerValue(value) - min;
                           CFIndex max = IOHIDElementGetPhysicalMax(element) - min;
                           float val = (float)state / (float)max;

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
      case 133:
      case 134:
         switch (type)
         {
            case 128:
            case 129:
               pushed_button = 1;
               break;
         }
         break;
      case 131:
          switch (type)
          {
             case 128:
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
                           CFIndex min = IOHIDElementGetPhysicalMin(element);
                           CFIndex state = IOHIDValueGetIntegerValue(value) - min;
                           CFIndex max = IOHIDElementGetPhysicalMax(element) - min;
                           float val = (float)state / (float)max;

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

      tmp = adapter->buttons;

      while (tmp && tmp->cookie != (IOHIDElementCookie)cookie)
      {
         bit++;
         tmp = tmp->next;
      }

      if (tmp && tmp->cookie == (IOHIDElementCookie)cookie)
      {
         CFIndex state = IOHIDValueGetIntegerValue(value);
         if (state)
            BIT64_SET(hid->buttons[adapter->slot], bit);
         else
            BIT64_CLEAR(hid->buttons[adapter->slot], bit);
      }
   }
}
