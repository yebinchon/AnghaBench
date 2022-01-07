
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_4__ ;
typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_15__ {TYPE_1__* Server; } ;
struct TYPE_14__ {int L3SwList; } ;
struct TYPE_13__ {int Name; } ;
struct TYPE_12__ {TYPE_3__* Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ RPC_L3SW ;
typedef int L3SW ;
typedef TYPE_3__ CEDAR ;
typedef TYPE_4__ ADMIN ;


 int ALog (TYPE_4__*,int *,char*,int ) ;
 int ERR_INTERNAL_ERROR ;
 int ERR_INVALID_PARAMETER ;
 int ERR_LAYER3_SW_EXISTS ;
 int ERR_NO_ERROR ;
 scalar_t__ GetServerCapsInt (TYPE_1__*,char*) ;
 int IncrementServerConfigRevision (TYPE_1__*) ;
 scalar_t__ IsEmptyStr (int ) ;
 int IsSafeStr (int ) ;
 int * L3AddSw (TYPE_3__*,int ) ;
 int * L3GetSw (TYPE_3__*,int ) ;
 scalar_t__ LIST_NUM (int ) ;
 int LockList (int ) ;
 int NO_SUPPORT_FOR_BRIDGE ;
 int ReleaseL3Sw (int *) ;
 int SERVER_ADMIN_ONLY ;
 int UnlockList (int ) ;

UINT StAddL3Switch(ADMIN *a, RPC_L3SW *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 UINT ret = ERR_NO_ERROR;
 L3SW *sw;

 NO_SUPPORT_FOR_BRIDGE;

 if (IsEmptyStr(t->Name))
 {
  return ERR_INVALID_PARAMETER;
 }

 if (IsSafeStr(t->Name) == 0)
 {
  return ERR_INVALID_PARAMETER;
 }

 SERVER_ADMIN_ONLY;


 sw = L3GetSw(c, t->Name);
 if (sw != ((void*)0))
 {

  ReleaseL3Sw(sw);
  ret = ERR_LAYER3_SW_EXISTS;
 }
 else
 {
  LockList(c->L3SwList);
  {
   if (LIST_NUM(c->L3SwList) >= GetServerCapsInt(s, "i_max_l3_sw"))
   {

    sw = ((void*)0);
   }
   else
   {

    sw = L3AddSw(c, t->Name);

    if (sw != ((void*)0))
    {
     ALog(a, ((void*)0), "LA_ADD_L3_SW", t->Name);

     IncrementServerConfigRevision(s);
    }
   }
  }
  UnlockList(c->L3SwList);

  if (sw == ((void*)0))
  {

   ret = ERR_INTERNAL_ERROR;
  }
  else
  {

   ReleaseL3Sw(sw);
  }
 }

 return ret;
}
