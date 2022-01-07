
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int tmp ;
typedef int proc_list ;
typedef scalar_t__ UINT ;
struct TYPE_6__ {int StrValue; } ;
struct TYPE_5__ {int member_0; char* member_1; char* member_2; scalar_t__ Id; scalar_t__ (* Proc ) (int *,char*,int ,int) ;int Description; int Args; int member_3; } ;
typedef TYPE_1__ SI_DEBUG_PROC_LIST ;
typedef int SERVER ;
typedef TYPE_2__ RPC_TEST ;


 scalar_t__ ERR_INVALID_PARAMETER ;
 scalar_t__ ERR_NOT_SUPPORTED ;
 scalar_t__ ERR_NO_ERROR ;
 int Format (char*,int,char*,scalar_t__,int ,scalar_t__,...) ;
 int IsEmptyStr (int ) ;
 int MAX_SIZE ;
 int SiDebugProcCrash ;
 int SiDebugProcDump ;
 int SiDebugProcExit ;
 int SiDebugProcGetCurrentGetIPThreadCount ;
 int SiDebugProcGetCurrentTcpSendQueueLength ;
 int SiDebugProcGetExeFileName ;
 int SiDebugProcGetIPsecMessageDisplayedValue ;
 int SiDebugProcGetVgsMessageDisplayedValue ;
 int SiDebugProcHelloWorld ;
 int SiDebugProcRestorePriority ;
 int SiDebugProcSetHighPriority ;
 int SiDebugProcSetIPsecMessageDisplayedValue ;
 int SiDebugProcSetVgsMessageDisplayedValue ;
 int StrCat (int ,int,char*) ;
 int StrCpy (int ,int,char*) ;
 int Zero (TYPE_2__*,int) ;
 scalar_t__ stub1 (int *,char*,int ,int) ;

UINT SiDebug(SERVER *s, RPC_TEST *ret, UINT i, char *str)
{
 SI_DEBUG_PROC_LIST proc_list[] =
 {
  {1, "Hello World", "<test string>", SiDebugProcHelloWorld},
  {2, "Terminate process now", "", SiDebugProcExit},
  {3, "Write memory dumpfile", "", SiDebugProcDump},
  {4, "Restore process priority", "", SiDebugProcRestorePriority},
  {5, "Set the process priority high", "", SiDebugProcSetHighPriority},
  {6, "Get the .exe filename of the process", "", SiDebugProcGetExeFileName},
  {7, "Crash the process", "", SiDebugProcCrash},
  {8, "Get IPsecMessageDisplayed Flag", "", SiDebugProcGetIPsecMessageDisplayedValue},
  {9, "Set IPsecMessageDisplayed Flag", "", SiDebugProcSetIPsecMessageDisplayedValue},
  {10, "Get VgsMessageDisplayed Flag", "", SiDebugProcGetVgsMessageDisplayedValue},
  {11, "Set VgsMessageDisplayed Flag", "", SiDebugProcSetVgsMessageDisplayedValue},
  {12, "Get the current TCP send queue length", "", SiDebugProcGetCurrentTcpSendQueueLength},
  {13, "Get the current GetIP thread count", "", SiDebugProcGetCurrentGetIPThreadCount},
 };
 UINT num_proc_list = sizeof(proc_list) / sizeof(proc_list[0]);
 UINT j;
 UINT ret_value = ERR_NO_ERROR;

 if (s == ((void*)0) || ret == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 if (i == 0)
 {
  char tmp[MAX_SIZE];
  Zero(ret, sizeof(RPC_TEST));

  StrCat(ret->StrValue, sizeof(ret->StrValue),
   "\n--- Debug Functions List --\n");

  for (j = 0;j < num_proc_list;j++)
  {
   SI_DEBUG_PROC_LIST *p = &proc_list[j];

   if (IsEmptyStr(p->Args) == 0)
   {
    Format(tmp, sizeof(tmp),
     " %u: %s - Usage: %u /ARG:\"%s\"\n",
     p->Id, p->Description, p->Id, p->Args);
   }
   else
   {
    Format(tmp, sizeof(tmp),
     " %u: %s - Usage: %u\n",
     p->Id, p->Description, p->Id);
   }

   StrCat(ret->StrValue, sizeof(ret->StrValue), tmp);
  }
 }
 else
 {
  ret_value = ERR_NOT_SUPPORTED;

  for (j = 0;j < num_proc_list;j++)
  {
   SI_DEBUG_PROC_LIST *p = &proc_list[j];

   if (p->Id == i)
   {
    ret_value = p->Proc(s, str, ret->StrValue, sizeof(ret->StrValue));

    if (ret_value == ERR_NO_ERROR && IsEmptyStr(ret->StrValue))
    {
     StrCpy(ret->StrValue, sizeof(ret->StrValue), "Ok.");
    }
    break;
   }
  }
 }

 return ret_value;
}
