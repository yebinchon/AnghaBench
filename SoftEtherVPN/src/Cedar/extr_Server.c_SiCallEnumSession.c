
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_11__ {int hostname; } ;
struct TYPE_10__ {size_t NumSession; TYPE_1__* Sessions; } ;
struct TYPE_9__ {int RemoteSession; int RemoteHostname; } ;
typedef int SERVER ;
typedef TYPE_2__ RPC_ENUM_SESSION ;
typedef int PACK ;
typedef TYPE_3__ FARM_MEMBER ;


 int FreePack (int *) ;
 int InRpcEnumSession (TYPE_2__*,int *) ;
 int * NewPack () ;
 int PackAddStr (int *,char*,char*) ;
 int * SiCallTask (TYPE_3__*,int *,char*) ;
 int StrCpy (int ,int,int ) ;
 int Zero (TYPE_2__*,int) ;

void SiCallEnumSession(SERVER *s, FARM_MEMBER *f, char *hubname, RPC_ENUM_SESSION *t)
{
 PACK *p;
 UINT i;

 if (s == ((void*)0) || f == ((void*)0) || hubname == ((void*)0) || t == ((void*)0))
 {
  return;
 }

 p = NewPack();
 PackAddStr(p, "HubName", hubname);

 p = SiCallTask(f, p, "enumsession");

 Zero(t, sizeof(RPC_ENUM_SESSION));
 InRpcEnumSession(t, p);

 for (i = 0;i < t->NumSession;i++)
 {
  t->Sessions[i].RemoteSession = 1;
  StrCpy(t->Sessions[i].RemoteHostname, sizeof(t->Sessions[i].RemoteHostname),
   f->hostname);
 }

 FreePack(p);
}
