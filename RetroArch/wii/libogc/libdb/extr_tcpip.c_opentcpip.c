
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dbginterface {scalar_t__ fhndl; } ;


 scalar_t__ listensock ;
 scalar_t__ tcpip_accept (scalar_t__) ;
 int tcpip_starttimer (scalar_t__) ;

__attribute__((used)) static int opentcpip(struct dbginterface *device)
{
 if(listensock>=0 && (device->fhndl<0 ))
  device->fhndl = tcpip_accept(listensock);

 if(device->fhndl<0)
  return -1;
 else
  tcpip_starttimer(device->fhndl);

 return 0;
}
