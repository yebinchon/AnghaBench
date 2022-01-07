
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_26__ {int ServerAdmin; char* HubName; int * LogFileList; TYPE_1__* Server; } ;
struct TYPE_25__ {int Me; int hostname; } ;
struct TYPE_24__ {int ServerName; int Path; int UpdatedTime; int FileSize; } ;
struct TYPE_23__ {scalar_t__ NumItem; TYPE_2__* Items; } ;
struct TYPE_22__ {int ServerName; int FilePath; int UpdatedTime; int FileSize; } ;
struct TYPE_21__ {scalar_t__ ServerType; int * FarmMemberList; int * Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ RPC_ENUM_LOG_FILE_ITEM ;
typedef TYPE_3__ RPC_ENUM_LOG_FILE ;
typedef TYPE_4__ LOG_FILE ;
typedef int LIST ;
typedef int HUB ;
typedef TYPE_5__ FARM_MEMBER ;
typedef int CEDAR ;
typedef TYPE_6__ ADMIN ;


 int Add (int *,TYPE_3__*) ;
 int AdjoinRpcEnumLogFile (TYPE_3__*,TYPE_3__*) ;
 int * CmpLogFile ;
 scalar_t__ ERR_NOT_ENOUGH_RIGHT ;
 scalar_t__ ERR_NOT_SUPPORTED ;
 scalar_t__ ERR_NO_ERROR ;
 int Free (TYPE_3__*) ;
 int FreeEnumLogFile (int *) ;
 int FreeRpcEnumLogFile (TYPE_3__*) ;
 int * GetHub (int *,char*) ;
 scalar_t__ GetHubAdminOption (int *,char*) ;
 int Insert (int *,TYPE_4__*) ;
 void* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int LockList (int *) ;
 void* NewListFast (int *) ;
 int ReleaseHub (int *) ;
 int ReleaseList (int *) ;
 scalar_t__ SERVER_TYPE_FARM_CONTROLLER ;
 scalar_t__ SiCallEnumLogFileList (TYPE_1__*,TYPE_5__*,TYPE_3__*,char*) ;
 int SiEnumLocalLogFileList (TYPE_1__*,char*,TYPE_3__*) ;
 int StrCpy (int ,int,int ) ;
 int UnlockList (int *) ;
 int Zero (TYPE_3__*,int) ;
 void* ZeroMalloc (int) ;

UINT StEnumLogFile(ADMIN *a, RPC_ENUM_LOG_FILE *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 UINT i;
 bool no_access = 0;

 HUB *h;

 if (a->ServerAdmin == 0)
 {
  h = GetHub(c, a->HubName);

  if (a->ServerAdmin == 0 && GetHubAdminOption(h, "no_read_log_file") != 0)
  {
   no_access = 1;
  }

  ReleaseHub(h);
 }
 else
 {
  if (s->ServerType == SERVER_TYPE_FARM_CONTROLLER)
  {


   return ERR_NOT_SUPPORTED;
  }
 }

 if (no_access)
 {
  return ERR_NOT_ENOUGH_RIGHT;
 }

 FreeRpcEnumLogFile(t);
 Zero(t, sizeof(RPC_ENUM_LOG_FILE));


 SiEnumLocalLogFileList(s, a->ServerAdmin ? ((void*)0) : a->HubName, t);

 if (s->ServerType == SERVER_TYPE_FARM_CONTROLLER)
 {
  UINT i;
  LIST *tt_list = NewListFast(((void*)0));

  LockList(s->FarmMemberList);
  {
   for (i = 0;i < LIST_NUM(s->FarmMemberList);i++)
   {
    FARM_MEMBER *f = LIST_DATA(s->FarmMemberList, i);

    if (f->Me == 0)
    {

     RPC_ENUM_LOG_FILE *tt;
     tt = ZeroMalloc(sizeof(RPC_ENUM_LOG_FILE));

     if (SiCallEnumLogFileList(s, f, tt, a->ServerAdmin ? "" : a->HubName))
     {
      UINT i;
      for (i = 0;i < tt->NumItem;i++)
      {
       RPC_ENUM_LOG_FILE_ITEM *e = &tt->Items[i];

       StrCpy(e->ServerName, sizeof(e->ServerName), f->hostname);
      }

      Add(tt_list, tt);
     }
     else
     {
      Free(tt);
     }
    }
   }
  }
  UnlockList(s->FarmMemberList);

  for (i = 0;i < LIST_NUM(tt_list);i++)
  {
   RPC_ENUM_LOG_FILE *tt = LIST_DATA(tt_list, i);

   AdjoinRpcEnumLogFile(t, tt);
   FreeRpcEnumLogFile(tt);

   Free(tt);
  }

  ReleaseList(tt_list);
 }


 if (a->LogFileList != ((void*)0))
 {
  FreeEnumLogFile(a->LogFileList);
 }

 a->LogFileList = NewListFast(CmpLogFile);

 for (i = 0;i < t->NumItem;i++)
 {
  RPC_ENUM_LOG_FILE_ITEM *e = &t->Items[i];
  LOG_FILE *f = ZeroMalloc(sizeof(LOG_FILE));

  f->FileSize = e->FileSize;
  f->UpdatedTime = e->UpdatedTime;
  StrCpy(f->Path, sizeof(f->Path), e->FilePath);
  StrCpy(f->ServerName, sizeof(f->ServerName), e->ServerName);

  Insert(a->LogFileList, f);
 }

 return ERR_NO_ERROR;
}
