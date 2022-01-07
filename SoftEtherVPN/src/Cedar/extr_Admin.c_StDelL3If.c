
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_10__ {TYPE_1__* Server; } ;
struct TYPE_9__ {int Name; int HubName; } ;
struct TYPE_8__ {int * Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ RPC_L3IF ;
typedef int L3SW ;
typedef int CEDAR ;
typedef TYPE_3__ ADMIN ;


 int ALog (TYPE_3__*,int *,char*,int ,int ) ;
 int ERR_LAYER3_IF_DEL_FAILED ;
 int ERR_LAYER3_SW_NOT_FOUND ;
 int ERR_NO_ERROR ;
 int IncrementServerConfigRevision (TYPE_1__*) ;
 int L3DelIf (int *,int ) ;
 int * L3GetSw (int *,int ) ;
 int NO_SUPPORT_FOR_BRIDGE ;
 int ReleaseL3Sw (int *) ;
 int SERVER_ADMIN_ONLY ;

UINT StDelL3If(ADMIN *a, RPC_L3IF *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 UINT ret = ERR_NO_ERROR;
 L3SW *sw;

 NO_SUPPORT_FOR_BRIDGE;

 SERVER_ADMIN_ONLY;

 sw = L3GetSw(c, t->Name);

 if (sw == ((void*)0))
 {
  ret = ERR_LAYER3_SW_NOT_FOUND;
 }
 else
 {
  if (L3DelIf(sw, t->HubName) == 0)
  {
   ret = ERR_LAYER3_IF_DEL_FAILED;
  }
  else
  {
   ALog(a, ((void*)0), "LA_DEL_L3_IF", t->HubName, t->Name);

   IncrementServerConfigRevision(s);
  }
  ReleaseL3Sw(sw);
 }

 return ret;
}
