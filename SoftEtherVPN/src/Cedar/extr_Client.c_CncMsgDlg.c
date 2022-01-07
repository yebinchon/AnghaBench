
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* ServerName; char* HubName; int Msg; } ;
typedef TYPE_1__ UI_MSG_DLG ;
typedef int SOCK ;
typedef int PACK ;


 int * CncConnectEx (int) ;
 char* CopyUniToUtf (int ) ;
 int Free (char*) ;
 int FreePack (int *) ;
 int * NewPack () ;
 int PackAddData (int *,char*,char*,int ) ;
 int PackAddStr (int *,char*,char*) ;
 int SendPack (int *,int *) ;
 int StrLen (char*) ;

SOCK *CncMsgDlg(UI_MSG_DLG *dlg)
{
 SOCK *s;
 PACK *p;
 char *utf;

 if (dlg == ((void*)0))
 {
  return ((void*)0);
 }

 s = CncConnectEx(200);
 if (s == ((void*)0))
 {
  return ((void*)0);
 }

 p = NewPack();
 PackAddStr(p, "function", "msg_dialog");
 PackAddStr(p, "ServerName", dlg->ServerName);
 PackAddStr(p, "HubName", dlg->HubName);
 utf = CopyUniToUtf(dlg->Msg);
 PackAddData(p, "Msg", utf, StrLen(utf));
 Free(utf);

 SendPack(s, p);
 FreePack(p);

 return s;
}
