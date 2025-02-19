
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_3__ ;
typedef struct TYPE_13__ TYPE_2__ ;
typedef struct TYPE_12__ TYPE_1__ ;


typedef scalar_t__ UINT64 ;
typedef size_t UINT ;
struct TYPE_14__ {int* addr; } ;
struct TYPE_13__ {size_t InterfaceID; size_t Metric; scalar_t__ InnerScore; size_t OldIfMetric; int PPPConnection; TYPE_3__ DestMask; TYPE_3__ GatewayIP; TYPE_3__ DestIP; int LocalRouting; } ;
struct TYPE_12__ {size_t NumEntry; TYPE_2__** Entry; } ;
typedef TYPE_1__ ROUTE_TABLE ;
typedef TYPE_2__ ROUTE_ENTRY ;
typedef TYPE_3__ IP ;


 int Copy (TYPE_3__*,TYPE_3__*,int) ;
 size_t IPToUINT (TYPE_3__*) ;
 scalar_t__ IsIP6 (TYPE_3__*) ;
 int MsIsVista () ;
 TYPE_2__* ZeroMallocFast (int) ;

ROUTE_ENTRY *GetBestRouteEntryFromRouteTableEx(ROUTE_TABLE *table, IP *ip, UINT exclude_if_id)
{
 UINT i;
 ROUTE_ENTRY *ret = ((void*)0);
 ROUTE_ENTRY *tmp = ((void*)0);
 UINT64 min_score = 0;

 if (ip == ((void*)0) || table == ((void*)0))
 {
  return ((void*)0);
 }

 if (IsIP6(ip))
 {

  return ((void*)0);
 }




 for (i = 0;i < table->NumEntry;i++)
 {
  ROUTE_ENTRY *e = table->Entry[i];
  UINT dest, net, mask;

  dest = IPToUINT(ip);
  net = IPToUINT(&e->DestIP);
  mask = IPToUINT(&e->DestMask);

  if (exclude_if_id != 0)
  {
   if (e->InterfaceID == exclude_if_id)
   {
    continue;
   }
  }


  if ((dest & mask) == (net & mask))
  {

   UINT score_high32 = mask;
   UINT score_low32 = 0xFFFFFFFF - e->Metric;
   UINT64 score64 = (UINT64)score_high32 * (UINT64)0x80000000 * (UINT64)2 + (UINT64)score_low32;
   if (score64 == 0)
   {
    score64 = 1;
   }

   e->InnerScore = score64;
  }
 }

 tmp = ((void*)0);


 for (i = 0;i < table->NumEntry;i++)
 {
  ROUTE_ENTRY *e = table->Entry[i];

  if (e->InnerScore != 0)
  {
   if (e->InnerScore >= min_score)
   {
    tmp = e;
    min_score = e->InnerScore;
   }
  }
 }

 if (tmp != ((void*)0))
 {
  UINT dest, gateway, mask;


  ret = ZeroMallocFast(sizeof(ROUTE_ENTRY));

  Copy(&ret->DestIP, ip, sizeof(IP));
  ret->DestMask.addr[0] = 255;
  ret->DestMask.addr[1] = 255;
  ret->DestMask.addr[2] = 255;
  ret->DestMask.addr[3] = 255;
  Copy(&ret->GatewayIP, &tmp->GatewayIP, sizeof(IP));
  ret->InterfaceID = tmp->InterfaceID;
  ret->LocalRouting = tmp->LocalRouting;
  ret->OldIfMetric = tmp->Metric;
  ret->Metric = 1;
  ret->PPPConnection = tmp->PPPConnection;


  dest = IPToUINT(&tmp->DestIP);
  gateway = IPToUINT(&tmp->GatewayIP);
  mask = IPToUINT(&tmp->DestMask);
  if ((dest & mask) == (gateway & mask))
  {







  }
 }

 return ret;
}
