
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Offline; } ;
typedef TYPE_1__ LINK ;


 int StopLink (TYPE_1__*) ;

void SetLinkOffline(LINK *k)
{

 if (k == ((void*)0))
 {
  return;
 }

 if (k->Offline)
 {
  return;
 }

 StopLink(k);
 k->Offline = 1;
}
