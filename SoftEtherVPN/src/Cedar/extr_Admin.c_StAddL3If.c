
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_16__ {TYPE_1__* Server; } ;
struct TYPE_15__ {int lock; } ;
struct TYPE_14__ {int SubnetMask; int IpAddress; int Name; int HubName; } ;
struct TYPE_13__ {int * Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ RPC_L3IF ;
typedef TYPE_3__ L3SW ;
typedef int CEDAR ;
typedef TYPE_4__ ADMIN ;


 int ALog (TYPE_4__*,int *,char*,int ,int ) ;
 int ERR_INVALID_PARAMETER ;
 int ERR_LAYER3_IF_ADD_FAILED ;
 int ERR_LAYER3_IF_EXISTS ;
 int ERR_LAYER3_SW_NOT_FOUND ;
 int ERR_NO_ERROR ;
 int IncrementServerConfigRevision (TYPE_1__*) ;
 int IsHostIPAddress32 (int) ;
 int IsSubnetMask32 (int) ;
 int L3AddIf (TYPE_3__*,int ,int,int) ;
 TYPE_3__* L3GetSw (int *,int ) ;
 int * L3SearchIf (TYPE_3__*,int ) ;
 int Lock (int ) ;
 int NO_SUPPORT_FOR_BRIDGE ;
 int ReleaseL3Sw (TYPE_3__*) ;
 int SERVER_ADMIN_ONLY ;
 int Unlock (int ) ;

UINT StAddL3If(ADMIN *a, RPC_L3IF *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 UINT ret = ERR_NO_ERROR;
 L3SW *sw;


 if (IsSubnetMask32(t->SubnetMask) == 0 || IsHostIPAddress32(t->IpAddress) == 0)
 {
  return ERR_INVALID_PARAMETER;
 }
 if ((t->IpAddress & (~t->SubnetMask)) == 0)
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
   if (L3SearchIf(sw, t->HubName) != ((void*)0))
   {

    ret = ERR_LAYER3_IF_EXISTS;
   }
   else
   {
    if (L3AddIf(sw, t->HubName, t->IpAddress, t->SubnetMask) == 0)
    {
     ret = ERR_LAYER3_IF_ADD_FAILED;
    }
    else
    {
     ALog(a, ((void*)0), "LA_ADD_L3_IF", t->HubName, t->Name);

     IncrementServerConfigRevision(s);
    }
   }
  }
  Unlock(sw->lock);
  ReleaseL3Sw(sw);
 }

 return ret;
}
