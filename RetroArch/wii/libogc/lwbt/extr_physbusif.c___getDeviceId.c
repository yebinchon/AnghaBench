
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u16 ;
typedef scalar_t__ s32 ;
struct TYPE_2__ {int fd; } ;


 int USB_OH0_DEVICE_ID ;
 int USB_OH1_DEVICE_ID ;
 scalar_t__ USB_OpenDevice (int ,int ,int ,int *) ;
 int __ntd_ohci ;
 int __ntd_ohci_initflag ;
 int __ntd_usb_fd ;
 TYPE_1__ __usbdev ;

__attribute__((used)) static s32 __getDeviceId(u16 vid,u16 pid)
{
 s32 ret = 0;

 if(__ntd_ohci_initflag==0x0001) {
  if(__ntd_ohci==0x0000)
   ret = USB_OpenDevice(USB_OH0_DEVICE_ID,vid,pid,&__usbdev.fd);
  else if(__ntd_ohci==0x0001)
   ret = USB_OpenDevice(USB_OH1_DEVICE_ID,vid,pid,&__usbdev.fd);
 } else
  ret = USB_OpenDevice(USB_OH1_DEVICE_ID,vid,pid,&__usbdev.fd);


 if(ret==0) __ntd_usb_fd = __usbdev.fd;
 return ret;
}
