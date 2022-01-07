
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dbginterface {int fhndl; } ;


 int __usb_isgeckoalive (int ) ;

__attribute__((used)) static int usbopen(struct dbginterface *device)
{
 if(!__usb_isgeckoalive(device->fhndl)) {
  return -1;
 }

 return 0;
}
