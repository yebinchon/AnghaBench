
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_4__ {size_t NumTokens; char** Token; } ;
typedef TYPE_1__ TOKEN_LIST ;
typedef int HUB ;
typedef int FOLDER ;


 TYPE_1__* CfgEnumFolderToTokenList (int *) ;
 int CfgGetFolder (int *,char*) ;
 int FreeToken (TYPE_1__*) ;
 int SiLoadGroupCfg (int *,int ) ;

void SiLoadGroupList(HUB *h, FOLDER *f)
{
 TOKEN_LIST *t;
 UINT i;
 char *name;

 if (f == ((void*)0) || h == ((void*)0))
 {
  return;
 }

 t = CfgEnumFolderToTokenList(f);

 for (i = 0;i < t->NumTokens;i++)
 {
  name = t->Token[i];
  SiLoadGroupCfg(h, CfgGetFolder(f, name));
 }

 FreeToken(t);
}
