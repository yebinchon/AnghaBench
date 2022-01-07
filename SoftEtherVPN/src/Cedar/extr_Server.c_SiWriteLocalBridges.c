
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int name ;
typedef scalar_t__ UINT ;
struct TYPE_5__ {TYPE_1__* Cedar; } ;
struct TYPE_4__ {int LocalBridgeList; } ;
typedef TYPE_2__ SERVER ;
typedef int LOCALBRIDGE ;
typedef int FOLDER ;


 int CfgAddBool (int *,char*,int ) ;
 int CfgCreateFolder (int *,char*) ;
 int Format (char*,int,char*,scalar_t__) ;
 int GSF_LOCALBRIDGE_NO_DISABLE_OFFLOAD ;
 int GetGlobalServerFlag (int ) ;
 int * LIST_DATA (int ,scalar_t__) ;
 scalar_t__ LIST_NUM (int ) ;
 int LockList (int ) ;
 int MAX_SIZE ;
 int SiWriteLocalBridgeCfg (int ,int *) ;
 int UnlockList (int ) ;
 int Win32EthGetShowAllIf () ;
 int Win32GetEnableSeLow () ;

void SiWriteLocalBridges(FOLDER *f, SERVER *s)
{

 if (s == ((void*)0) || f == ((void*)0))
 {
  return;
 }
 LockList(s->Cedar->LocalBridgeList);
 {
  UINT i;
  for (i = 0;i < LIST_NUM(s->Cedar->LocalBridgeList);i++)
  {
   LOCALBRIDGE *br = LIST_DATA(s->Cedar->LocalBridgeList, i);
   char name[MAX_SIZE];

   Format(name, sizeof(name), "LocalBridge%u", i);
   SiWriteLocalBridgeCfg(CfgCreateFolder(f, name), br);
  }
 }
 UnlockList(s->Cedar->LocalBridgeList);
}
