
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int name ;
typedef scalar_t__ UINT ;
struct TYPE_3__ {int ServerListenerList; } ;
typedef int SERVER_LISTENER ;
typedef TYPE_1__ SERVER ;
typedef int FOLDER ;


 int CfgCreateFolder (int *,char*) ;
 int Format (char*,int,char*,scalar_t__) ;
 int * LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int LockList (int ) ;
 int MAX_SIZE ;
 int SiWriteListenerCfg (int ,int *) ;
 int UnlockList (int ) ;

void SiWriteListeners(FOLDER *f, SERVER *s)
{

 if (f == ((void*)0) || s == ((void*)0))
 {
  return;
 }

 LockList(s->ServerListenerList);
 {
  UINT i;
  for (i = 0;i < LIST_NUM(s->ServerListenerList);i++)
  {
   SERVER_LISTENER *r = LIST_DATA(s->ServerListenerList, i);
   char name[MAX_SIZE];
   Format(name, sizeof(name), "Listener%u", i);
   SiWriteListenerCfg(CfgCreateFolder(f, name), r);
  }
 }
 UnlockList(s->ServerListenerList);
}
