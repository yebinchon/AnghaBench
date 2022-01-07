
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dbginterface {int fhndl; } ;


 int tcpip_close (int) ;
 int tcpip_stoptimer (int) ;

__attribute__((used)) static int closetcpip(struct dbginterface *device)
{
 tcpip_stoptimer(device->fhndl);
 tcpip_close(device->fhndl);
 device->fhndl = -1;
 return 0;
}
