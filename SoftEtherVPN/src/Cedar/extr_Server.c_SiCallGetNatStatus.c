
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SERVER ;
typedef int RPC_NAT_STATUS ;
typedef int PACK ;
typedef int FARM_MEMBER ;


 int FreePack (int *) ;
 int InRpcNatStatus (int *,int *) ;
 int * NewPack () ;
 int PackAddStr (int *,char*,char*) ;
 int * SiCallTask (int *,int *,char*) ;
 int Zero (int *,int) ;

void SiCallGetNatStatus(SERVER *s, FARM_MEMBER *f, char *hubname, RPC_NAT_STATUS *t)
{
 PACK *p;

 if (s == ((void*)0) || f == ((void*)0) || hubname == ((void*)0) || t == ((void*)0))
 {
  return;
 }

 p = NewPack();
 PackAddStr(p, "HubName", hubname);

 p = SiCallTask(f, p, "getnatstatus");

 Zero(t, sizeof(RPC_NAT_STATUS));
 InRpcNatStatus(t, p);

 FreePack(p);
}
