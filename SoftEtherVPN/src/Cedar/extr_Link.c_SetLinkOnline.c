
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Offline; scalar_t__ NoOnline; } ;
typedef TYPE_1__ LINK ;


 int StartLink (TYPE_1__*) ;

void SetLinkOnline(LINK *k)
{

 if (k == ((void*)0))
 {
  return;
 }

 if (k->NoOnline)
 {
  return;
 }

 if (k->Offline == 0)
 {
  return;
 }

 k->Offline = 0;
 StartLink(k);
}
