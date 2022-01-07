
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_2__ ;
typedef struct TYPE_17__ TYPE_1__ ;


typedef char wchar_t ;
typedef int UINT ;
struct TYPE_18__ {int Buf; } ;
struct TYPE_17__ {int (* Write ) (TYPE_1__*,char*) ;} ;
typedef int LIST ;
typedef TYPE_1__ CONSOLE ;
typedef TYPE_2__ BUF ;


 int CmdPrintAbout (TYPE_1__*) ;
 char* CopyUtfToUni (int ) ;
 int ERR_INVALID_PARAMETER ;
 int Free (char*) ;
 int FreeBuf (TYPE_2__*) ;
 int FreeParamValueList (int *) ;
 int * ParseCommandList (TYPE_1__*,char*,char*,int *,int ) ;
 TYPE_2__* ReadDump (char*) ;
 int SeekBufToEnd (TYPE_2__*) ;
 int WriteBufChar (TYPE_2__*,int) ;
 char* _UU (char*) ;
 int stub1 (TYPE_1__*,char*) ;
 int stub2 (TYPE_1__*,char*) ;
 int stub3 (TYPE_1__*,char*) ;
 int stub4 (TYPE_1__*,char*) ;
 int stub5 (TYPE_1__*,char*) ;
 int stub6 (TYPE_1__*,char*) ;
 int stub7 (TYPE_1__*,char*) ;

UINT PsAbout(CONSOLE *c, char *cmd_name, wchar_t *str, void *param)
{
 LIST *o;
 BUF *b;

 o = ParseCommandList(c, cmd_name, str, ((void*)0), 0);
 if (o == ((void*)0))
 {
  return ERR_INVALID_PARAMETER;
 }

 b = ReadDump("|legal.txt");

 CmdPrintAbout(c);
 c->Write(c, L"\r\n");

 if (b != ((void*)0))
 {
  wchar_t *s;

  SeekBufToEnd(b);
  WriteBufChar(b, 13);
  WriteBufChar(b, 10);
  WriteBufChar(b, 0);

  s = CopyUtfToUni(b->Buf);

  c->Write(c, s);

  Free(s);
 }


 c->Write(c, _UU("D_ABOUT@S_INFO3"));
 c->Write(c, L"\r\n");
 c->Write(c, _UU("D_ABOUT@S_INFO4"));
 c->Write(c, L"\r\n");
 CmdPrintAbout(c);
 c->Write(c, L"\r\n");

 FreeParamValueList(o);

 FreeBuf(b);

 return 0;
}
