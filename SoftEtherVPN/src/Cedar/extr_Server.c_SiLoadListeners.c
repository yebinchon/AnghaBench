
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_4__ {size_t NumTokens; int * Token; } ;
typedef TYPE_1__ TOKEN_LIST ;
typedef int SERVER ;
typedef int FOLDER ;


 TYPE_1__* CfgEnumFolderToTokenList (int *) ;
 int * CfgGetFolder (int *,int ) ;
 int FreeToken (TYPE_1__*) ;
 int SiLoadListenerCfg (int *,int *) ;

void SiLoadListeners(SERVER *s, FOLDER *f)
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
  FOLDER *ff = CfgGetFolder(f, t->Token[i]);
  if (ff != ((void*)0))
  {
   SiLoadListenerCfg(s, ff);
  }
 }
 FreeToken(t);
}
