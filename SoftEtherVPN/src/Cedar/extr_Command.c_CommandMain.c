
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef char wchar_t ;
typedef int cmd ;
typedef int UINT ;
struct TYPE_8__ {char* member_0; int member_1; } ;
struct TYPE_7__ {int ProgrammingMode; int (* Free ) (TYPE_1__*) ;int RetCode; int ConsoleType; } ;
typedef TYPE_1__ CONSOLE ;
typedef TYPE_2__ CMD ;


 int CONSOLE_CSV ;
 char* CopyUniToStr (char*) ;
 int DispatchNextCmdEx (TYPE_1__*,char*,char*,TYPE_2__*,int,int *) ;
 int ERR_INVALID_PARAMETER ;
 int Free (char*) ;
 TYPE_1__* NewLocalConsole (char*,char*) ;
 char* ParseCommand (char*,char*) ;
 int Print (char*) ;
 scalar_t__ UniIsEmptyStr (char*) ;
 int VpnCmdProc ;
 int stub1 (TYPE_1__*) ;

UINT CommandMain(wchar_t *command_line)
{
 UINT ret = 0;
 wchar_t *infile, *outfile;
 char *a_infile, *a_outfile;
 wchar_t *csvmode;
 wchar_t *programming_mode;
 CONSOLE *c;


 if (command_line == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }


 infile = ParseCommand(command_line, L"in");
 outfile = ParseCommand(command_line, L"out");
 if (UniIsEmptyStr(infile))
 {
  Free(infile);
  infile = ((void*)0);
 }
 if (UniIsEmptyStr(outfile))
 {
  Free(outfile);
  outfile = ((void*)0);
 }

 a_infile = CopyUniToStr(infile);
 a_outfile = CopyUniToStr(outfile);


 c = NewLocalConsole(infile, outfile);
 if (c != ((void*)0))
 {

  CMD cmd[] =
  {
   {"vpncmd", VpnCmdProc},
  };


  csvmode = ParseCommand(command_line, L"csv");
  if(csvmode != ((void*)0))
  {
   Free(csvmode);
   c->ConsoleType = CONSOLE_CSV;
  }

  programming_mode = ParseCommand(command_line, L"programming");
  if (programming_mode != ((void*)0))
  {
   Free(programming_mode);
   c->ProgrammingMode = 1;
  }

  if (DispatchNextCmdEx(c, command_line, ">", cmd, sizeof(cmd) / sizeof(cmd[0]), ((void*)0)) == 0)
  {
   ret = ERR_INVALID_PARAMETER;
  }
  else
  {
   ret = c->RetCode;
  }


  c->Free(c);
 }
 else
 {
  Print("Error: Couldn't open local console.\n");
 }

 Free(a_infile);
 Free(a_outfile);
 Free(infile);
 Free(outfile);

 return ret;
}
