
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dbginterface {int fhndl; } ;


 int __usb_sendbuffer (int ,void const*,int) ;

__attribute__((used)) static int usbwrite(struct dbginterface *device,const void *buffer,int size)
{
 int ret;
 ret = __usb_sendbuffer(device->fhndl,buffer,size);
 return ret;
}
