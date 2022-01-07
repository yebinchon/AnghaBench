
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int Password; int UserName; int HubName; int Id; } ;
typedef int PACK ;
typedef TYPE_1__ ETHERIP_ID ;


 int PackGetStr (int *,char*,int ,int) ;
 int Zero (TYPE_1__*,int) ;

void InEtherIpId(ETHERIP_ID *t, PACK *p)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(ETHERIP_ID));

 PackGetStr(p, "Id", t->Id, sizeof(t->Id));
 PackGetStr(p, "HubName", t->HubName, sizeof(t->HubName));
 PackGetStr(p, "UserName", t->UserName, sizeof(t->UserName));
 PackGetStr(p, "Password", t->Password, sizeof(t->Password));
}
