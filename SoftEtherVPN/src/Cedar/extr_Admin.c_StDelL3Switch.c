
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int UINT ;
struct TYPE_10__ {TYPE_1__* Server; } ;
struct TYPE_9__ {int Name; } ;
struct TYPE_8__ {int * Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ RPC_L3SW ;
typedef int CEDAR ;
typedef TYPE_3__ ADMIN ;


 int ALog (TYPE_3__*,int *,char*,int ) ;
 int ERR_INVALID_PARAMETER ;
 int ERR_LAYER3_SW_NOT_FOUND ;
 int ERR_NO_ERROR ;
 int IncrementServerConfigRevision (TYPE_1__*) ;
 scalar_t__ IsEmptyStr (int ) ;
 int L3DelSw (int *,int ) ;
 int NO_SUPPORT_FOR_BRIDGE ;
 int SERVER_ADMIN_ONLY ;

UINT StDelL3Switch(ADMIN *a, RPC_L3SW *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 UINT ret = ERR_NO_ERROR;

 if (IsEmptyStr(t->Name))
 {
  return ERR_INVALID_PARAMETER;
 }

 NO_SUPPORT_FOR_BRIDGE;

 SERVER_ADMIN_ONLY;

 if (L3DelSw(c, t->Name) == 0)
 {
  ret = ERR_LAYER3_SW_NOT_FOUND;
 }
 else
 {
  ALog(a, ((void*)0), "LA_DEL_L3_SW", t->Name);

  IncrementServerConfigRevision(s);
 }

 return ret;
}
