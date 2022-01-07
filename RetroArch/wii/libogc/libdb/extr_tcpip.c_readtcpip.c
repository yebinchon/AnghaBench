
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dbginterface {scalar_t__ fhndl; } ;


 int tcpip_read (scalar_t__,void*,int) ;

__attribute__((used)) static int readtcpip(struct dbginterface *device,void *buffer,int size)
{
 if(device->fhndl>=0)
  return tcpip_read(device->fhndl,buffer,size);

 return 0;
}
