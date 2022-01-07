
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int ac ;
typedef size_t UINT ;
struct TYPE_8__ {int Masked; int SubnetMask; int IpAddress; int Priority; int Deny; } ;
struct TYPE_7__ {size_t NumTokens; int * Token; } ;
typedef TYPE_1__ TOKEN_LIST ;
typedef int LIST ;
typedef int FOLDER ;
typedef TYPE_2__ AC ;


 int AddAc (int *,TYPE_2__*) ;
 TYPE_1__* CfgEnumFolderToTokenList (int *) ;
 int CfgGetBool (int *,char*) ;
 int * CfgGetFolder (int *,int ) ;
 int CfgGetInt (int *,char*) ;
 scalar_t__ CfgGetIp (int *,char*,int *) ;
 int FreeToken (TYPE_1__*) ;
 int LockList (int *) ;
 int UnlockList (int *) ;
 int Zero (TYPE_2__*,int) ;

void SiLoadAcList(LIST *o, FOLDER *f)
{

 if (o == ((void*)0) || f == ((void*)0))
 {
  return;
 }

 LockList(o);
 {
  TOKEN_LIST *t = CfgEnumFolderToTokenList(f);

  if (t != ((void*)0))
  {
   UINT i;

   for (i = 0;i < t->NumTokens;i++)
   {
    FOLDER *ff = CfgGetFolder(f, t->Token[i]);

    if (ff != ((void*)0))
    {
     AC ac;

     Zero(&ac, sizeof(ac));
     ac.Deny = CfgGetBool(ff, "Deny");
     ac.Priority = CfgGetInt(ff, "Priority");
     CfgGetIp(ff, "IpAddress", &ac.IpAddress);

     if (CfgGetIp(ff, "NetMask", &ac.SubnetMask))
     {
      ac.Masked = 1;
     }

     AddAc(o, &ac);
    }
   }

   FreeToken(t);
  }
 }
 UnlockList(o);
}
