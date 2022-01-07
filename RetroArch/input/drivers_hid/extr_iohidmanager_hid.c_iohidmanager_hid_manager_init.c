
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ ptr; } ;
typedef TYPE_1__ iohidmanager_hid_t ;


 int CFRunLoopGetCurrent () ;
 scalar_t__ IOHIDManagerCreate (int ,int ) ;
 int IOHIDManagerScheduleWithRunLoop (scalar_t__,int ,int ) ;
 int IOHIDManagerSetDeviceMatching (scalar_t__,int *) ;
 int kCFAllocatorDefault ;
 int kCFRunLoopDefaultMode ;
 int kIOHIDOptionsTypeNone ;

__attribute__((used)) static int iohidmanager_hid_manager_init(iohidmanager_hid_t *hid)
{
   if (!hid)
      return -1;
   if (hid->ptr)
      return 0;

   hid->ptr = IOHIDManagerCreate(kCFAllocatorDefault, kIOHIDOptionsTypeNone);

   if (!hid->ptr)
      return -1;

   IOHIDManagerSetDeviceMatching(hid->ptr, ((void*)0));
   IOHIDManagerScheduleWithRunLoop(hid->ptr, CFRunLoopGetCurrent(),
         kCFRunLoopDefaultMode);
   return 0;
}
