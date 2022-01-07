
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int openstate; int fd; } ;


 int USB_CloseDeviceAsync (int *,int ,int *) ;
 int __usb_closeCB ;
 TYPE_1__ __usbdev ;

void physbusif_shutdown()
{
 if(__usbdev.openstate!=0x0004) return;
 USB_CloseDeviceAsync(&__usbdev.fd,__usb_closeCB,((void*)0));
}
