
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_11__ {TYPE_1__* Cedar; } ;
struct TYPE_10__ {size_t NumTokens; char** Token; } ;
struct TYPE_9__ {scalar_t__ Bridge; } ;
typedef TYPE_2__ TOKEN_LIST ;
typedef TYPE_3__ SERVER ;
typedef int FOLDER ;


 TYPE_2__* CfgEnumFolderToTokenList (int *) ;
 int * CfgGetFolder (int *,char*) ;
 int FreeToken (TYPE_2__*) ;
 int SERVER_DEFAULT_BRIDGE_NAME ;
 int SiInitDefaultHubList (TYPE_3__*) ;
 int SiLoadHubCfg (TYPE_3__*,int *,char*) ;
 scalar_t__ StrCmpi (char*,int ) ;

void SiLoadHubs(SERVER *s, FOLDER *f)
{
 UINT i;
 FOLDER *hub_folder;
 TOKEN_LIST *t;
 bool b = 0;

 if (f == ((void*)0) || s == ((void*)0))
 {
  return;
 }

 t = CfgEnumFolderToTokenList(f);
 for (i = 0;i < t->NumTokens;i++)
 {
  char *name = t->Token[i];


  if (s->Cedar->Bridge)
  {
   if (StrCmpi(name, SERVER_DEFAULT_BRIDGE_NAME) == 0)
   {


    b = 1;
   }
   else
   {
    continue;
   }
  }
  hub_folder = CfgGetFolder(f, name);
  if (hub_folder != ((void*)0))
  {
   SiLoadHubCfg(s, hub_folder, name);
  }
 }
 FreeToken(t);

 if (s->Cedar->Bridge && b == 0)
 {

  SiInitDefaultHubList(s);
 }
}
