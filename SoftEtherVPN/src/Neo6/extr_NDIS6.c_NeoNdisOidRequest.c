
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int ULONG ;
struct TYPE_7__ {int BytesNeeded; int InformationBufferLength; int InformationBuffer; int Oid; } ;
struct TYPE_6__ {int BytesNeeded; int BytesWritten; int InformationBufferLength; int InformationBuffer; int Oid; } ;
struct TYPE_8__ {TYPE_2__ SET_INFORMATION; TYPE_1__ QUERY_INFORMATION; } ;
struct TYPE_9__ {int RequestType; TYPE_3__ DATA; } ;
typedef TYPE_4__* PNDIS_OID_REQUEST ;
typedef int NDIS_STATUS ;
typedef int NDIS_HANDLE ;


 int NDIS_STATUS_NOT_SUPPORTED ;



 int NeoNdisQuery (int ,int ,int ,int ,int *,int *) ;
 int NeoNdisSet (int ,int ,int ,int ,int *,int *) ;
 int STATUS_UNSUCCESSFUL ;

NDIS_STATUS NeoNdisOidRequest(NDIS_HANDLE MiniportAdapterContext,
         PNDIS_OID_REQUEST OidRequest)
{
 NDIS_STATUS ret = STATUS_UNSUCCESSFUL;
 ULONG dummy = 0;

 switch (OidRequest->RequestType)
 {
 case 130:
 case 129:
  ret = NeoNdisQuery(MiniportAdapterContext,
   OidRequest->DATA.QUERY_INFORMATION.Oid,
   OidRequest->DATA.QUERY_INFORMATION.InformationBuffer,
   OidRequest->DATA.QUERY_INFORMATION.InformationBufferLength,
   &OidRequest->DATA.QUERY_INFORMATION.BytesWritten,
   &OidRequest->DATA.QUERY_INFORMATION.BytesNeeded);
  break;

 case 128:
  ret = NeoNdisSet(MiniportAdapterContext,
   OidRequest->DATA.SET_INFORMATION.Oid,
   OidRequest->DATA.SET_INFORMATION.InformationBuffer,
   OidRequest->DATA.SET_INFORMATION.InformationBufferLength,
   &dummy,
   &OidRequest->DATA.SET_INFORMATION.BytesNeeded);
  break;

 default:
  ret = NDIS_STATUS_NOT_SUPPORTED;
  break;
 }

 return ret;
}
