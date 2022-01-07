
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_4__ {size_t NumTokens; char** Token; } ;
typedef TYPE_1__ TOKEN_LIST ;
typedef int SERVER ;
typedef int FOLDER ;


 TYPE_1__* CfgEnumFolderToTokenList (int *) ;
 int CfgGetBool (int *,char*) ;
 int CfgGetFolder (int *,char*) ;
 int FreeToken (TYPE_1__*) ;
 int GSF_LOCALBRIDGE_NO_DISABLE_OFFLOAD ;
 int SetGlobalServerFlag (int ,int ) ;
 int SiLoadLocalBridgeCfg (int *,int ) ;
 int Win32EthSetShowAllIf (int ) ;

void SiLoadLocalBridges(SERVER *s, FOLDER *f)
{
 TOKEN_LIST *t;
 UINT i;

 if (s == ((void*)0) || f == ((void*)0))
 {
  return;
 }
 t = CfgEnumFolderToTokenList(f);

 for (i = 0;i < t->NumTokens;i++)
 {
  char *name = t->Token[i];

  SiLoadLocalBridgeCfg(s, CfgGetFolder(f, name));
 }

 FreeToken(t);
}
