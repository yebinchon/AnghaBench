
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_1__ ;


typedef int t ;
typedef int a ;
struct TYPE_9__ {int ServerAdmin; int * Server; } ;
typedef int SERVER ;
typedef TYPE_1__ RPC_SESSION_STATUS ;
typedef int PACK ;
typedef TYPE_1__ ADMIN ;


 scalar_t__ ERR_NO_ERROR ;
 int FreeRpcSessionStatus (TYPE_1__*) ;
 int InRpcSessionStatus (TYPE_1__*,int *) ;
 int * NewPack () ;
 int OutRpcSessionStatus (int *,TYPE_1__*) ;
 scalar_t__ StGetSessionStatus (TYPE_1__*,TYPE_1__*) ;
 int Zero (TYPE_1__*,int) ;

PACK *SiCalledGetSessionStatus(SERVER *s, PACK *p)
{
 RPC_SESSION_STATUS t;
 ADMIN a;
 PACK *ret;

 if (s == ((void*)0) || p == ((void*)0))
 {
  return ((void*)0);
 }

 Zero(&t, sizeof(t));
 InRpcSessionStatus(&t, p);

 Zero(&a, sizeof(a));
 a.Server = s;
 a.ServerAdmin = 1;

 if (StGetSessionStatus(&a, &t) != ERR_NO_ERROR)
 {
  FreeRpcSessionStatus(&t);
  return ((void*)0);
 }

 ret = NewPack();

 OutRpcSessionStatus(ret, &t);

 FreeRpcSessionStatus(&t);

 return ret;
}
