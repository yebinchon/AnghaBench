
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dbginterface {scalar_t__ fhndl; } ;


 int tcpip_write (scalar_t__,void const*,int) ;

__attribute__((used)) static int writetcpip(struct dbginterface *device,const void *buffer,int size)
{
 if(device->fhndl>=0)
  return tcpip_write(device->fhndl,buffer,size);

 return 0;
}
