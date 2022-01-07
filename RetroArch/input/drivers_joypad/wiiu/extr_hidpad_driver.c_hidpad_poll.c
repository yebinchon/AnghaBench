
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int HID_POLL () ;
 scalar_t__ hidpad_ready ;

__attribute__((used)) static void hidpad_poll(void)
{
   if (hidpad_ready)
      HID_POLL();
}
