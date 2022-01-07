
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SERVER ;
typedef int RPC_SESSION_STATUS ;
typedef int PACK ;
typedef int FARM_MEMBER ;


 int FreePack (int *) ;
 int FreeRpcSessionStatus (int *) ;
 int InRpcSessionStatus (int *,int *) ;
 int * NewPack () ;
 int OutRpcSessionStatus (int *,int *) ;
 int * SiCallTask (int *,int *,char*) ;
 int Zero (int *,int) ;

bool SiCallGetSessionStatus(SERVER *s, FARM_MEMBER *f, RPC_SESSION_STATUS *t)
{
 PACK *p;

 if (s == ((void*)0) || f == ((void*)0))
 {
  return 0;
 }

 p = NewPack();
 OutRpcSessionStatus(p, t);
 FreeRpcSessionStatus(t);
 Zero(t, sizeof(RPC_SESSION_STATUS));

 p = SiCallTask(f, p, "getsessionstatus");

 if (p == ((void*)0))
 {
  return 0;
 }

 InRpcSessionStatus(t, p);
 FreePack(p);

 return 1;
}
