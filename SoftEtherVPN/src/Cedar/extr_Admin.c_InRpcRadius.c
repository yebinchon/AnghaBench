
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {void* RadiusRetryInterval; int RadiusSecret; int HubName; void* RadiusPort; int RadiusServerName; } ;
typedef TYPE_1__ RPC_RADIUS ;
typedef int PACK ;


 void* PackGetInt (int *,char*) ;
 int PackGetStr (int *,char*,int ,int) ;
 int Zero (TYPE_1__*,int) ;

void InRpcRadius(RPC_RADIUS *t, PACK *p)
{

 if (t == ((void*)0) || p == ((void*)0))
 {
  return;
 }

 Zero(t, sizeof(RPC_RADIUS));
 PackGetStr(p, "RadiusServerName", t->RadiusServerName, sizeof(t->RadiusServerName));
 t->RadiusPort = PackGetInt(p, "RadiusPort");
 PackGetStr(p, "HubName", t->HubName, sizeof(t->HubName));
 PackGetStr(p, "RadiusSecret", t->RadiusSecret, sizeof(t->RadiusSecret));
 t->RadiusRetryInterval = PackGetInt(p, "RadiusRetryInterval");
}
