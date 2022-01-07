
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_10__ {int CaList; } ;
struct TYPE_9__ {TYPE_3__* Cedar; } ;
struct TYPE_8__ {size_t NumTokens; int * Token; } ;
typedef TYPE_1__ TOKEN_LIST ;
typedef int FOLDER ;
typedef TYPE_2__ CLIENT ;
typedef TYPE_3__ CEDAR ;


 TYPE_1__* CfgEnumFolderToTokenList (int *) ;
 int * CfgGetFolder (int *,int ) ;
 int CiLoadCACert (TYPE_2__*,int *) ;
 int FreeToken (TYPE_1__*) ;
 int LockList (int ) ;
 int UnlockList (int ) ;

void CiLoadCAList(CLIENT *c, FOLDER *f)
{
 CEDAR *cedar;
 TOKEN_LIST *t;

 if (c == ((void*)0) || f == ((void*)0))
 {
  return;
 }

 t = CfgEnumFolderToTokenList(f);

 cedar = c->Cedar;

 LockList(cedar->CaList);
 {
  UINT i;
  for (i = 0;i < t->NumTokens;i++)
  {
   FOLDER *folder = CfgGetFolder(f, t->Token[i]);
   CiLoadCACert(c, folder);
  }
 }
 UnlockList(cedar->CaList);

 FreeToken(t);
}
