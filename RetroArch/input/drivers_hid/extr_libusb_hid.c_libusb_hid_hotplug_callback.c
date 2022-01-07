
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct libusb_device {int dummy; } ;
struct libusb_context {int dummy; } ;
typedef int libusb_hotplug_event ;
typedef int libusb_hid_t ;




 int RARCH_WARN (char*,int) ;
 int add_adapter (int *,struct libusb_device*) ;
 int remove_adapter (int *,struct libusb_device*) ;

__attribute__((used)) static int libusb_hid_hotplug_callback(struct libusb_context *ctx,
      struct libusb_device *dev, libusb_hotplug_event event, void *user_data)
{
   libusb_hid_t *hid = (libusb_hid_t*)user_data;

   switch (event)
   {
      case 129:
         add_adapter(hid, dev);
         break;
      case 128:
         remove_adapter(hid, dev);
         break;
      default:
         RARCH_WARN("Unhandled event: %d\n", event);
         break;
   }

   return 0;
}
