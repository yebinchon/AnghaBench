
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int Password; int UserName; int HubName; int Id; } ;
typedef int PACK ;
typedef TYPE_1__ ETHERIP_ID ;


 int PackAddStr (int *,char*,int ) ;

void OutEtherIpId(PACK *p, ETHERIP_ID *t)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddStr(p, "Id", t->Id);
 PackAddStr(p, "HubName", t->HubName);
 PackAddStr(p, "UserName", t->UserName);
 PackAddStr(p, "Password", t->Password);
}
