
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_7__ {int AccountList; } ;
struct TYPE_6__ {size_t NumTokens; int * Token; } ;
typedef TYPE_1__ TOKEN_LIST ;
typedef int FOLDER ;
typedef TYPE_2__ CLIENT ;
typedef int ACCOUNT ;


 int Add (int ,int *) ;
 TYPE_1__* CfgEnumFolderToTokenList (int *) ;
 int * CfgGetFolder (int *,int ) ;
 int * CiLoadClientAccount (int *) ;
 int FreeToken (TYPE_1__*) ;
 int Sort (int ) ;

void CiLoadAccountDatabase(CLIENT *c, FOLDER *f)
{
 TOKEN_LIST *t;
 UINT i;

 if (c == ((void*)0) || f == ((void*)0))
 {
  return;
 }

 t = CfgEnumFolderToTokenList(f);
 if (t == ((void*)0))
 {
  return;
 }

 for (i = 0;i < t->NumTokens;i++)
 {
  FOLDER *ff = CfgGetFolder(f, t->Token[i]);

  if (ff != ((void*)0))
  {
   ACCOUNT *a = CiLoadClientAccount(ff);
   if (a != ((void*)0))
   {
    {
     Add(c->AccountList, a);
    }
   }
  }
 }

 Sort(c->AccountList);

 FreeToken(t);
}
