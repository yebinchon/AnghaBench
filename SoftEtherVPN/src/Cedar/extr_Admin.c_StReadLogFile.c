
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_26__ TYPE_7__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_2__ ;
typedef struct TYPE_22__ TYPE_1__ ;


typedef int tt ;
typedef int servername ;
typedef int logfilename ;
typedef int elf ;
typedef scalar_t__ UINT ;
struct TYPE_26__ {scalar_t__ Size; int Buf; } ;
struct TYPE_25__ {int * LogFileList; TYPE_1__* Server; } ;
struct TYPE_24__ {int Me; int hostname; } ;
struct TYPE_23__ {char* FilePath; char* ServerName; scalar_t__ Offset; TYPE_7__* Buffer; } ;
struct TYPE_22__ {scalar_t__ ServerType; int FarmMemberList; int * Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ RPC_READ_LOG_FILE ;
typedef TYPE_2__ RPC_ENUM_LOG_FILE ;
typedef TYPE_4__ FARM_MEMBER ;
typedef int CEDAR ;
typedef TYPE_5__ ADMIN ;


 int ALog (TYPE_5__*,int *,char*,char*,char*) ;
 int CheckLogFileNameFromEnumList (int *,char*,char*) ;
 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NO_ERROR ;
 scalar_t__ ERR_OBJECT_NOT_FOUND ;
 int FreeRpcEnumLogFile (TYPE_2__*) ;
 int FreeRpcReadLogFile (TYPE_2__*) ;
 int GetMachineName (char*,int) ;
 scalar_t__ IsEmptyStr (char*) ;
 TYPE_4__* LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int LockList (int ) ;
 int MAX_HOST_NAME_LEN ;
 int MAX_PATH ;
 TYPE_7__* NewBuf () ;
 scalar_t__ SERVER_TYPE_FARM_CONTROLLER ;
 scalar_t__ SiCallReadLogFile (TYPE_1__*,TYPE_4__*,TYPE_2__*) ;
 int SiReadLocalLogFile (TYPE_1__*,char*,scalar_t__,TYPE_2__*) ;
 scalar_t__ StEnumLogFile (TYPE_5__*,TYPE_2__*) ;
 scalar_t__ StrCmpi (int ,char*) ;
 int StrCpy (char*,int,char*) ;
 int UnlockList (int ) ;
 int WriteBuf (TYPE_7__*,int ,scalar_t__) ;
 int Zero (TYPE_2__*,int) ;

UINT StReadLogFile(ADMIN *a, RPC_READ_LOG_FILE *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 char logfilename[MAX_PATH];
 char servername[MAX_HOST_NAME_LEN + 1];
 UINT offset;
 bool local = 1;

 if (IsEmptyStr(t->FilePath))
 {
  return ERR_INVALID_PARAMETER;
 }

 StrCpy(logfilename, sizeof(logfilename), t->FilePath);
 StrCpy(servername, sizeof(servername), t->ServerName);
 offset = t->Offset;

 if (s->ServerType != SERVER_TYPE_FARM_CONTROLLER)
 {
  GetMachineName(servername, sizeof(servername));
 }


 if (a->LogFileList == ((void*)0))
 {

  RPC_ENUM_LOG_FILE elf;
  UINT elf_ret;

  Zero(&elf, sizeof(elf));

  elf_ret = StEnumLogFile(a, &elf);

  FreeRpcEnumLogFile(&elf);

  if (elf_ret != ERR_NO_ERROR)
  {
   return elf_ret;
  }
 }
 if (CheckLogFileNameFromEnumList(a->LogFileList, logfilename, servername) == 0)
 {

  return ERR_OBJECT_NOT_FOUND;
 }

 FreeRpcReadLogFile(t);
 Zero(t, sizeof(RPC_READ_LOG_FILE));

 if (s->ServerType == SERVER_TYPE_FARM_CONTROLLER)
 {
  UINT i;


  LockList(s->FarmMemberList);
  {
   for (i = 0;i < LIST_NUM(s->FarmMemberList);i++)
   {
    FARM_MEMBER *f = LIST_DATA(s->FarmMemberList, i);

    if (f->Me == 0)
    {
     if (StrCmpi(f->hostname, servername) == 0)
     {
      RPC_READ_LOG_FILE tt;

      Zero(&tt, sizeof(tt));
      local = 0;

      StrCpy(tt.ServerName, sizeof(tt.ServerName), servername);
      StrCpy(tt.FilePath, sizeof(tt.FilePath), logfilename);
      tt.Offset = offset;

      if (SiCallReadLogFile(s, f, &tt))
      {
       if (tt.Buffer != ((void*)0) && tt.Buffer->Size > 0)
       {
        t->Buffer = NewBuf();
        WriteBuf(t->Buffer, tt.Buffer->Buf, tt.Buffer->Size);
       }
      }

      FreeRpcReadLogFile(&tt);

      break;
     }
    }
   }
  }
  UnlockList(s->FarmMemberList);
 }


 if (local)
 {
  SiReadLocalLogFile(s, logfilename, offset, t);
 }

 if (offset == 0)
 {
  ALog(a, ((void*)0), "LA_READ_LOG_FILE", servername, logfilename);
 }

 StrCpy(t->FilePath, sizeof(t->FilePath), logfilename);
 StrCpy(t->ServerName, sizeof(t->ServerName), servername);
 t->Offset = offset;

 return ERR_NO_ERROR;
}
