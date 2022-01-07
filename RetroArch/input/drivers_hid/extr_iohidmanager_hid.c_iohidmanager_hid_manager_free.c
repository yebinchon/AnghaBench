
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * ptr; } ;
typedef TYPE_1__ iohidmanager_hid_t ;


 int CFRelease (int *) ;
 int CFRunLoopGetCurrent () ;
 int IOHIDManagerClose (int *,int ) ;
 int IOHIDManagerUnscheduleFromRunLoop (int *,int ,int ) ;
 int kCFRunLoopCommonModes ;
 int kIOHIDOptionsTypeNone ;

__attribute__((used)) static int iohidmanager_hid_manager_free(iohidmanager_hid_t *hid)
{
   if (!hid || !hid->ptr)
      return -1;

   IOHIDManagerUnscheduleFromRunLoop(hid->ptr,
         CFRunLoopGetCurrent(), kCFRunLoopCommonModes);
   IOHIDManagerClose(hid->ptr, kIOHIDOptionsTypeNone);
   CFRelease(hid->ptr);
   hid->ptr = ((void*)0);

   return 0;
}
