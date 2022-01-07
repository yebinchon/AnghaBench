
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int s32 ;
struct TYPE_2__ {int fd; } ;


 TYPE_1__ __usbdev ;

__attribute__((used)) static s32 __usb_closeCB(s32 result,void *usrdata)
{
 __usbdev.fd = -1;
 return result;
}
