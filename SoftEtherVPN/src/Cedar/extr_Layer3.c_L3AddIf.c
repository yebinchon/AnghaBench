
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_10__ {int IpAddress; int SubnetMask; int HubName; TYPE_2__* Switch; } ;
struct TYPE_9__ {int Active; int lock; int IfList; TYPE_1__* Cedar; int TableList; } ;
struct TYPE_8__ {int Server; } ;
typedef TYPE_2__ L3SW ;
typedef TYPE_3__ L3IF ;


 scalar_t__ GetServerCapsInt (int ,char*) ;
 int Insert (int ,TYPE_3__*) ;
 int IsSafeStr (char*) ;
 int * L3SearchIf (TYPE_2__*,char*) ;
 scalar_t__ LIST_NUM (int ) ;
 int Lock (int ) ;
 int StrCpy (int ,int,char*) ;
 int Unlock (int ) ;
 TYPE_3__* ZeroMalloc (int) ;

bool L3AddIf(L3SW *s, char *hubname, UINT ip, UINT subnet)
{
 L3IF *f;
 bool ret = 0;

 if (s == ((void*)0) || hubname == ((void*)0) || IsSafeStr(hubname) == 0 ||
  ip == 0 || ip == 0xffffffff)
 {
  return 0;
 }

 Lock(s->lock);
 {
  if (LIST_NUM(s->TableList) >= GetServerCapsInt(s->Cedar->Server, "i_max_l3_if"))
  {

  }
  else
  {
   if (s->Active == 0)
   {

    if (L3SearchIf(s, hubname) == ((void*)0))
    {

     f = ZeroMalloc(sizeof(L3IF));

     f->Switch = s;
     StrCpy(f->HubName, sizeof(f->HubName), hubname);
     f->IpAddress = ip;
     f->SubnetMask = subnet;

     Insert(s->IfList, f);

     ret = 1;
    }
   }
  }
 }
 Unlock(s->lock);

 return ret;
}
