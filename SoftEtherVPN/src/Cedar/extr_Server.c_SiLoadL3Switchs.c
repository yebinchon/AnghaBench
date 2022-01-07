
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_7__ {int * Cedar; } ;
struct TYPE_6__ {size_t NumTokens; char** Token; } ;
typedef TYPE_1__ TOKEN_LIST ;
typedef TYPE_2__ SERVER ;
typedef int L3SW ;
typedef int FOLDER ;
typedef int CEDAR ;


 TYPE_1__* CfgEnumFolderToTokenList (int *) ;
 int CfgGetFolder (int *,char*) ;
 int FreeToken (TYPE_1__*) ;
 int * L3AddSw (int *,char*) ;
 int ReleaseL3Sw (int *) ;
 int SiLoadL3SwitchCfg (int *,int ) ;

void SiLoadL3Switchs(SERVER *s, FOLDER *f)
{
 UINT i;
 TOKEN_LIST *t;
 CEDAR *c;

 if (s == ((void*)0) || f == ((void*)0))
 {
  return;
 }
 c = s->Cedar;

 t = CfgEnumFolderToTokenList(f);
 if (t != ((void*)0))
 {
  for (i = 0;i < t->NumTokens;i++)
  {
   char *name = t->Token[i];
   L3SW *sw = L3AddSw(c, name);

   SiLoadL3SwitchCfg(sw, CfgGetFolder(f, name));

   ReleaseL3Sw(sw);
  }
 }
 FreeToken(t);
}
