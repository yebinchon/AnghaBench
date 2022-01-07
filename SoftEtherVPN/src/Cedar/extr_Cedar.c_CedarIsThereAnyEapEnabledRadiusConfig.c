
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_8__ {int HubList; } ;
struct TYPE_7__ {scalar_t__ RadiusConvertAllMsChapv2AuthRequestToEap; } ;
typedef TYPE_1__ HUB ;
typedef TYPE_2__ CEDAR ;


 TYPE_1__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int LockHubList (TYPE_2__*) ;
 int UnlockHubList (TYPE_2__*) ;

bool CedarIsThereAnyEapEnabledRadiusConfig(CEDAR *c)
{
 bool ret = 0;
 UINT i;
 if (c == ((void*)0))
 {
  return 0;
 }

 LockHubList(c);
 {
  for (i = 0;i < LIST_NUM(c->HubList);i++)
  {
   HUB *hub = LIST_DATA(c->HubList, i);

   if (hub->RadiusConvertAllMsChapv2AuthRequestToEap)
   {
    ret = 1;
    break;
   }
  }
 }
 UnlockHubList(c);

 return ret;
}
