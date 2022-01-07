
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dbginterface {int fhndl; } ;


 int tcpip_stoptimer (int ) ;

__attribute__((used)) static int waittcpip(struct dbginterface *device)
{
 tcpip_stoptimer(device->fhndl);
 return 0;
}
