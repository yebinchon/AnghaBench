
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* ParsedOptionList; struct TYPE_4__* Data; int OptionList; } ;
typedef TYPE_1__ DHCPV4_DATA ;


 int Free (TYPE_1__*) ;
 int FreeDhcpOptions (int ) ;

void FreeDHCPv4Data(DHCPV4_DATA *d)
{

 if (d == ((void*)0))
 {
  return;
 }

 FreeDhcpOptions(d->OptionList);
 Free(d->Data);

 Free(d->ParsedOptionList);

 Free(d);
}
