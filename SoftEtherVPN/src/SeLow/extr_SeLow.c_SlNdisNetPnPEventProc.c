
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_7__ {int IsEnumCompleted; } ;
struct TYPE_5__ {scalar_t__ NetEvent; } ;
struct TYPE_6__ {TYPE_1__ NetPnPEvent; } ;
typedef int SL_ADAPTER ;
typedef TYPE_2__ NET_PNP_EVENT_NOTIFICATION ;
typedef int NDIS_STATUS ;
typedef scalar_t__ NDIS_HANDLE ;


 int NDIS_STATUS_SUCCESS ;
 scalar_t__ NetEventBindsComplete ;
 TYPE_3__* sl ;

NDIS_STATUS SlNdisNetPnPEventProc(NDIS_HANDLE protocol_binding_context, NET_PNP_EVENT_NOTIFICATION *net_pnp_event)
{
 SL_ADAPTER *a = (SL_ADAPTER *)protocol_binding_context;

 if (net_pnp_event != ((void*)0))
 {
  if (net_pnp_event->NetPnPEvent.NetEvent == NetEventBindsComplete)
  {
   sl->IsEnumCompleted = 1;
  }
 }

 return NDIS_STATUS_SUCCESS;
}
