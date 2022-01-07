
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* Hostname; } ;
typedef TYPE_1__ DHCP_LEASE ;


 int Free (TYPE_1__*) ;

void FreeDhcpLease(DHCP_LEASE *d)
{

 if (d == ((void*)0))
 {
  return;
 }

 Free(d->Hostname);
 Free(d);
}
