
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SERVER ;
typedef int RPC_ENUM_NAT ;
typedef int PACK ;
typedef int FARM_MEMBER ;


 int FreePack (int *) ;
 int InRpcEnumNat (int *,int *) ;
 int * NewPack () ;
 int PackAddStr (int *,char*,char*) ;
 int * SiCallTask (int *,int *,char*) ;
 int Zero (int *,int) ;

void SiCallEnumNat(SERVER *s, FARM_MEMBER *f, char *hubname, RPC_ENUM_NAT *t)
{
 PACK *p;

 if (s == ((void*)0) || f == ((void*)0) || hubname == ((void*)0) || t == ((void*)0))
 {
  return;
 }

 p = NewPack();
 PackAddStr(p, "HubName", hubname);

 p = SiCallTask(f, p, "enumnat");

 Zero(t, sizeof(RPC_ENUM_NAT));
 InRpcEnumNat(t, p);

 FreePack(p);
}
