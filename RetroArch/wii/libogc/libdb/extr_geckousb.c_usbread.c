
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dbginterface {int fhndl; } ;


 int __usb_recvbuffer (int ,void*,int) ;

__attribute__((used)) static int usbread(struct dbginterface *device,void *buffer,int size)
{
 int ret;
 ret = __usb_recvbuffer(device->fhndl,buffer,size);
 return ret;
}
