
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int s32 ;
typedef int pbcallback ;
struct TYPE_2__ {int openstate; int closecb; } ;


 int __issue_bulkread () ;
 int __issue_intrread () ;
 TYPE_1__ __usbdev ;
 scalar_t__ __wait4hci ;

__attribute__((used)) static s32 __usb_open(pbcallback cb)
{
 if(__usbdev.openstate!=0x0004) return -1;

 __usbdev.closecb = cb;
 __usbdev.openstate = 2;

 __issue_intrread();
 __issue_bulkread();

 __wait4hci = 0;
 return 0;
}
