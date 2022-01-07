
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_8__ {int UnixVLanList; } ;
struct TYPE_7__ {size_t NumTokens; int * Token; } ;
typedef TYPE_1__ TOKEN_LIST ;
typedef int FOLDER ;
typedef TYPE_2__ CLIENT ;


 TYPE_1__* CfgEnumFolderToTokenList (int *) ;
 int * CfgGetFolder (int *,int ) ;
 int CiLoadVLan (TYPE_2__*,int *) ;
 int FreeToken (TYPE_1__*) ;
 int LockList (int ) ;
 int UnlockList (int ) ;

void CiLoadVLanList(CLIENT *c, FOLDER *f)
{
 TOKEN_LIST *t;

 if (c == ((void*)0) || f == ((void*)0))
 {
  return;
 }

 t = CfgEnumFolderToTokenList(f);

 LockList(c->UnixVLanList);
 {
  UINT i;
  for (i = 0;i < t->NumTokens;i++)
  {
   FOLDER *folder = CfgGetFolder(f, t->Token[i]);
   CiLoadVLan(c, folder);
  }
 }
 UnlockList(c->UnixVLanList);

 FreeToken(t);
}
