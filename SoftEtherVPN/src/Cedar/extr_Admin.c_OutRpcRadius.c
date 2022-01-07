
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int RadiusRetryInterval; int RadiusSecret; int HubName; int RadiusPort; int RadiusServerName; } ;
typedef TYPE_1__ RPC_RADIUS ;
typedef int PACK ;


 int PackAddInt (int *,char*,int ) ;
 int PackAddStr (int *,char*,int ) ;

void OutRpcRadius(PACK *p, RPC_RADIUS *t)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 PackAddStr(p, "RadiusServerName", t->RadiusServerName);
 PackAddInt(p, "RadiusPort", t->RadiusPort);
 PackAddStr(p, "HubName", t->HubName);
 PackAddStr(p, "RadiusSecret", t->RadiusSecret);
 PackAddInt(p, "RadiusRetryInterval", t->RadiusRetryInterval);
}
