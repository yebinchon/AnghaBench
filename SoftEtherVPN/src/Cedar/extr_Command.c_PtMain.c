
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef char wchar_t ;
typedef int tmp ;
typedef int prompt ;
typedef int cmd ;
struct TYPE_13__ {scalar_t__ RetCode; scalar_t__ ConsoleType; int (* Write ) (TYPE_3__*,char*) ;} ;
struct TYPE_12__ {char* member_0; int member_1; } ;
struct TYPE_11__ {scalar_t__ LastError; int * CmdLine; TYPE_3__* Console; } ;
typedef TYPE_1__ PT ;
typedef TYPE_2__ CMD ;


 scalar_t__ CONSOLE_CSV ;
 int DispatchNextCmdEx (TYPE_3__*,int *,char*,TYPE_2__*,int,TYPE_1__*) ;
 scalar_t__ ERR_NO_ERROR ;
 int MAX_SIZE ;
 int PsAbout ;
 int PtCheck ;
 int PtMakeCert ;
 int PtMakeCert2048 ;
 int PtTrafficClient ;
 int PtTrafficServer ;
 int StrCpy (char*,int,char*) ;
 int UniFormat (char*,int,char*) ;
 char* _UU (char*) ;
 int stub1 (TYPE_3__*,char*) ;
 int stub2 (TYPE_3__*,char*) ;
 int stub3 (TYPE_3__*,char*) ;
 int stub4 (TYPE_3__*,char*) ;

void PtMain(PT *pt)
{
 char prompt[MAX_SIZE];
 wchar_t tmp[MAX_SIZE];

 if (pt == ((void*)0))
 {
  return;
 }


 UniFormat(tmp, sizeof(tmp), _UU("CMD_VPNCMD_TOOLS_CONNECTED"));
 pt->Console->Write(pt->Console, tmp);
 pt->Console->Write(pt->Console, L"");

 while (1)
 {

  CMD cmd[] =
  {
   {"About", PsAbout},
   {"MakeCert", PtMakeCert},
   {"MakeCert2048", PtMakeCert2048},
   {"TrafficClient", PtTrafficClient},
   {"TrafficServer", PtTrafficServer},
   {"Check", PtCheck},
  };


  StrCpy(prompt, sizeof(prompt), "VPN Tools>");

  if (DispatchNextCmdEx(pt->Console, pt->CmdLine, prompt, cmd, sizeof(cmd) / sizeof(cmd[0]), pt) == 0)
  {
   break;
  }
  pt->LastError = pt->Console->RetCode;

  if (pt->LastError == ERR_NO_ERROR && pt->Console->ConsoleType != CONSOLE_CSV)
  {
   pt->Console->Write(pt->Console, _UU("CMD_MSG_OK"));
   pt->Console->Write(pt->Console, L"");
  }

  if (pt->CmdLine != ((void*)0))
  {
   break;
  }
 }
}
