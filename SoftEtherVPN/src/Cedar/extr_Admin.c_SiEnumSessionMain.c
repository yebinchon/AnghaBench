
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_20__ TYPE_3__ ;
typedef struct TYPE_19__ TYPE_2__ ;
typedef struct TYPE_18__ TYPE_1__ ;


typedef int tmp ;
typedef int hubname ;
typedef scalar_t__ UINT ;
struct TYPE_20__ {int Me; } ;
struct TYPE_19__ {char* HubName; } ;
struct TYPE_18__ {scalar_t__ ServerType; int FarmMemberList; } ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ RPC_ENUM_SESSION ;
typedef int LIST ;
typedef TYPE_3__ FARM_MEMBER ;


 int Add (int *,TYPE_3__*) ;
 int AdjoinRpcEnumSession (TYPE_2__*,TYPE_2__*) ;
 scalar_t__ ERR_NO_ERROR ;
 int FreeRpcEnumSession (TYPE_2__*) ;
 int IsInList (int *,TYPE_3__*) ;
 TYPE_3__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int LockList (int ) ;
 int MAX_HUBNAME_LEN ;
 int * NewListFast (int *) ;
 int ReleaseList (int *) ;
 scalar_t__ SERVER_TYPE_FARM_CONTROLLER ;
 int SiCallEnumSession (TYPE_1__*,TYPE_3__*,char*,TYPE_2__*) ;
 int SiEnumLocalSession (TYPE_1__*,char*,TYPE_2__*) ;
 int StrCpy (char*,int,char*) ;
 int UnlockList (int ) ;
 int Zero (TYPE_2__*,int) ;

void SiEnumSessionMain(SERVER *s, RPC_ENUM_SESSION *t)
{
 char hubname[MAX_HUBNAME_LEN + 1];
 UINT ret = ERR_NO_ERROR;
 UINT num;
 UINT i;

 if (s == ((void*)0) || t == ((void*)0))
 {
  return;
 }

 StrCpy(hubname, sizeof(hubname), t->HubName);

 FreeRpcEnumSession(t);
 Zero(t, sizeof(RPC_ENUM_SESSION));
 StrCpy(t->HubName, sizeof(t->HubName), hubname);


 num = 0;
 SiEnumLocalSession(s, hubname, t);

 if (s->ServerType == SERVER_TYPE_FARM_CONTROLLER)
 {
  LIST *fm_list;

  fm_list = NewListFast(((void*)0));


  LockList(s->FarmMemberList);
  {
   while (1)
   {
    bool escape = 1;

    for (i = 0;i < LIST_NUM(s->FarmMemberList);i++)
    {
     FARM_MEMBER *f = LIST_DATA(s->FarmMemberList, i);

     if (IsInList(fm_list, f) == 0)
     {
      Add(fm_list, f);
      escape = 0;

      if (f->Me == 0)
      {
       RPC_ENUM_SESSION tmp;

       Zero(&tmp, sizeof(tmp));

       SiCallEnumSession(s, f, hubname, &tmp);

       AdjoinRpcEnumSession(t, &tmp);
       FreeRpcEnumSession(&tmp);
      }

      break;
     }
    }

    if (escape)
    {
     break;
    }

    UnlockList(s->FarmMemberList);
    LockList(s->FarmMemberList);
   }
  }
  UnlockList(s->FarmMemberList);

  ReleaseList(fm_list);
 }
}
