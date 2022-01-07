
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dbginterface {int write; int read; int wait; int close; int open; int fhndl; } ;
typedef int s32 ;


 int __usb_flush (int ) ;
 scalar_t__ __usb_isgeckoalive (int ) ;
 struct dbginterface usb_device ;
 int usbclose ;
 int usbopen ;
 int usbread ;
 int usbwait ;
 int usbwrite ;

struct dbginterface* usb_init(s32 channel)
{
 usb_device.fhndl = channel;
 if(__usb_isgeckoalive(channel))
  __usb_flush(channel);

 usb_device.open = usbopen;
 usb_device.close = usbclose;
 usb_device.wait = usbwait;
 usb_device.read = usbread;
 usb_device.write = usbwrite;

 return &usb_device;
}
