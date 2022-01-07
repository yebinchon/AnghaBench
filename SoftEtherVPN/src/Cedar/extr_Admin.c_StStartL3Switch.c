
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
struct TYPE_14__ {int lock; int Name; int IfList; } ;
struct TYPE_13__ {int Name; } ;
struct TYPE_12__ {int * Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ RPC_L3SW ;
typedef TYPE_3__ L3SW ;
typedef int CEDAR ;
typedef TYPE_4__ ADMIN ;


 int ALog (TYPE_4__*,int *,char*,int ) ;
 int ERR_INVALID_PARAMETER ;
 int ERR_LAYER3_CANT_START_SWITCH ;
 int ERR_LAYER3_SW_NOT_FOUND ;
 int ERR_NO_ERROR ;
 int IncrementServerConfigRevision (TYPE_1__*) ;
 scalar_t__ IsEmptyStr (int ) ;
 TYPE_3__* L3GetSw (int *,int ) ;
 int L3SwStart (TYPE_3__*) ;
 int LIST_NUM (int ) ;
 int Lock (int ) ;
 int NO_SUPPORT_FOR_BRIDGE ;
 int ReleaseL3Sw (TYPE_3__*) ;
 int SERVER_ADMIN_ONLY ;
 int Unlock (int ) ;

UINT StStartL3Switch(ADMIN *a, RPC_L3SW *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 UINT ret = ERR_NO_ERROR;
 L3SW *sw;

 if (IsEmptyStr(t->Name))
 {
  return ERR_INVALID_PARAMETER;
 }

 NO_SUPPORT_FOR_BRIDGE;

 SERVER_ADMIN_ONLY;

 sw = L3GetSw(c, t->Name);

 if (sw == ((void*)0))
 {
  ret = ERR_LAYER3_SW_NOT_FOUND;
 }
 else
 {
  Lock(sw->lock);
  {

   if (LIST_NUM(sw->IfList) >= 1)
   {
    L3SwStart(sw);

    ALog(a, ((void*)0), "LA_START_L3_SW", sw->Name);

    IncrementServerConfigRevision(s);
   }
   else
   {
    ret = ERR_LAYER3_CANT_START_SWITCH;
   }
  }
  Unlock(sw->lock);

  ReleaseL3Sw(sw);
 }

 return ret;
}
