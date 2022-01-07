
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct timeval {int member_0; } ;
struct TYPE_2__ {int quit; } ;
typedef TYPE_1__ libusb_hid_t ;


 int libusb_handle_events_timeout_completed (int *,struct timeval*,int *) ;

__attribute__((used)) static void poll_thread(void *data)
{
   libusb_hid_t *hid = (libusb_hid_t*)data;

   while (!hid->quit)
   {
      struct timeval timeout = {0};
      libusb_handle_events_timeout_completed(((void*)0),
            &timeout, &hid->quit);
   }
}
