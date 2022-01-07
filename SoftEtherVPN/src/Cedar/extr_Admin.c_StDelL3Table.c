
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_4__ ;
typedef struct TYPE_13__ TYPE_3__ ;
typedef struct TYPE_12__ TYPE_2__ ;
typedef struct TYPE_11__ TYPE_1__ ;


typedef int tmp ;
typedef int tbl ;
typedef int UINT ;
struct TYPE_14__ {TYPE_1__* Server; } ;
struct TYPE_13__ {int NetworkAddress; int Metric; int GatewayAddress; int SubnetMask; } ;
struct TYPE_12__ {int Name; int Metric; int GatewayAddress; int SubnetMask; int NetworkAddress; } ;
struct TYPE_11__ {int * Cedar; } ;
typedef TYPE_1__ SERVER ;
typedef TYPE_2__ RPC_L3TABLE ;
typedef TYPE_3__ L3TABLE ;
typedef int L3SW ;
typedef int CEDAR ;
typedef TYPE_4__ ADMIN ;


 int ALog (TYPE_4__*,int *,char*,char*,int ) ;
 int ERR_LAYER3_SW_NOT_FOUND ;
 int ERR_LAYER3_TABLE_DEL_FAILED ;
 int ERR_NO_ERROR ;
 int IPToStr32 (char*,int,int ) ;
 int IncrementServerConfigRevision (TYPE_1__*) ;
 int L3DelTable (int *,TYPE_3__*) ;
 int * L3GetSw (int *,int ) ;
 int MAX_SIZE ;
 int NO_SUPPORT_FOR_BRIDGE ;
 int ReleaseL3Sw (int *) ;
 int SERVER_ADMIN_ONLY ;
 int Zero (TYPE_3__*,int) ;

UINT StDelL3Table(ADMIN *a, RPC_L3TABLE *t)
{
 SERVER *s = a->Server;
 CEDAR *c = s->Cedar;
 UINT ret = ERR_NO_ERROR;
 L3SW *sw;

 SERVER_ADMIN_ONLY;

 NO_SUPPORT_FOR_BRIDGE;

 sw = L3GetSw(c, t->Name);

 if (sw == ((void*)0))
 {
  ret = ERR_LAYER3_SW_NOT_FOUND;
 }
 else
 {
  L3TABLE tbl;

  Zero(&tbl, sizeof(tbl));
  tbl.NetworkAddress = t->NetworkAddress;
  tbl.SubnetMask = t->SubnetMask;
  tbl.GatewayAddress = t->GatewayAddress;
  tbl.Metric = t->Metric;

  if (L3DelTable(sw, &tbl) == 0)
  {
   ret = ERR_LAYER3_TABLE_DEL_FAILED;
  }
  else
  {
   char tmp[MAX_SIZE];
   IPToStr32(tmp, sizeof(tmp), tbl.NetworkAddress);
   ALog(a, ((void*)0), "LA_DEL_L3_TABLE", tmp, t->Name);

   IncrementServerConfigRevision(s);
  }

  ReleaseL3Sw(sw);
 }

 return ret;
}
