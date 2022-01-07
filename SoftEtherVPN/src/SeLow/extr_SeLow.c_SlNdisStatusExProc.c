
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int SL_ADAPTER ;
typedef int NDIS_STATUS_INDICATION ;
typedef scalar_t__ NDIS_HANDLE ;



void SlNdisStatusExProc(NDIS_HANDLE protocol_binding_context, NDIS_STATUS_INDICATION *status_indication)
{
 SL_ADAPTER *a = (SL_ADAPTER *)protocol_binding_context;
}
