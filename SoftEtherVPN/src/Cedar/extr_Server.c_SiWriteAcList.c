
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int name ;
typedef scalar_t__ UINT ;
struct TYPE_3__ {int SubnetMask; scalar_t__ Masked; int IpAddress; int Priority; int Deny; } ;
typedef int LIST ;
typedef int FOLDER ;
typedef TYPE_1__ AC ;


 int CfgAddBool (int *,char*,int ) ;
 int CfgAddInt (int *,char*,int ) ;
 int CfgAddIp (int *,char*,int *) ;
 int * CfgCreateFolder (int *,char*) ;
 int Format (char*,int,char*,scalar_t__) ;
 TYPE_1__* LIST_DATA (int *,scalar_t__) ;
 scalar_t__ LIST_NUM (int *) ;
 int LockList (int *) ;
 int MAX_SIZE ;
 int UnlockList (int *) ;

void SiWriteAcList(FOLDER *f, LIST *o)
{

 if (f == ((void*)0) || o == ((void*)0))
 {
  return;
 }

 LockList(o);
 {
  UINT i;
  for (i = 0;i < LIST_NUM(o);i++)
  {
   char name[MAX_SIZE];
   AC *ac = LIST_DATA(o, i);
   FOLDER *ff;

   Format(name, sizeof(name), "Acl%u", i + 1);

   ff = CfgCreateFolder(f, name);

   CfgAddBool(ff, "Deny", ac->Deny);
   CfgAddInt(ff, "Priority", ac->Priority);
   CfgAddIp(ff, "IpAddress", &ac->IpAddress);

   if (ac->Masked)
   {
    CfgAddIp(ff, "NetMask", &ac->SubnetMask);
   }
  }
 }
 UnlockList(o);
}
