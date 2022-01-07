
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef size_t UINT ;
struct TYPE_13__ {size_t Value; int Name; } ;
struct TYPE_12__ {int AdminOptionList; } ;
struct TYPE_11__ {size_t NumTokens; char** Token; } ;
typedef TYPE_1__ TOKEN_LIST ;
typedef TYPE_2__ HUB ;
typedef int FOLDER ;
typedef TYPE_3__ ADMIN_OPTION ;


 int AddHubAdminOptionsDefaults (TYPE_2__*,int) ;
 TYPE_1__* CfgEnumItemToTokenList (int *) ;
 size_t CfgGetInt (int *,char*) ;
 int DeleteAllHubAdminOption (TYPE_2__*,int) ;
 int FreeToken (TYPE_1__*) ;
 int Insert (int ,TYPE_3__*) ;
 int LockList (int ) ;
 int StrCpy (int ,int,char*) ;
 int Trim (char*) ;
 int UnlockList (int ) ;
 TYPE_3__* ZeroMalloc (int) ;

void SiLoadHubAdminOptions(HUB *h, FOLDER *f)
{
 TOKEN_LIST *t;

 if (h == ((void*)0) || f == ((void*)0))
 {
  return;
 }

 t = CfgEnumItemToTokenList(f);
 if (t != ((void*)0))
 {
  UINT i;

  LockList(h->AdminOptionList);
  {
   DeleteAllHubAdminOption(h, 0);

   for (i = 0;i < t->NumTokens;i++)
   {
    char *name = t->Token[i];
    ADMIN_OPTION *a;
    UINT value = CfgGetInt(f, name);;

    Trim(name);

    a = ZeroMalloc(sizeof(ADMIN_OPTION));
    StrCpy(a->Name, sizeof(a->Name), name);
    a->Value = value;

    Insert(h->AdminOptionList, a);
   }

   AddHubAdminOptionsDefaults(h, 0);
  }
  UnlockList(h->AdminOptionList);

  FreeToken(t);
 }
}
