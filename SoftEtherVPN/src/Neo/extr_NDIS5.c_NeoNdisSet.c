
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int ULONG ;
typedef int UINT ;
struct TYPE_2__ {int CurrentPacketFilter; } ;
typedef int NDIS_STATUS ;
typedef int NDIS_OID ;
typedef int NDIS_HANDLE ;


 int NDIS_STATUS_INVALID_LENGTH ;
 int NDIS_STATUS_INVALID_OID ;
 int NDIS_STATUS_SUCCESS ;



 int STATUS_UNSUCCESSFUL ;
 TYPE_1__* ctx ;

NDIS_STATUS NeoNdisSet(
     NDIS_HANDLE MiniportAdapterContext,
     NDIS_OID Oid,
     void *InformationBuffer,
     ULONG InformationBufferLength,
     ULONG *BytesRead,
     ULONG *BytesNeeded)
{
 if (ctx == ((void*)0))
 {
  return STATUS_UNSUCCESSFUL;
 }


 *BytesRead = 0;
 *BytesNeeded = 0;


 switch (Oid)
 {
 case 128:

  if (InformationBufferLength != 4)
  {
   *BytesNeeded = 4;
   return NDIS_STATUS_INVALID_LENGTH;
  }
  *BytesRead = 4;
  ctx->CurrentPacketFilter = *((UINT *)InformationBuffer);
  return NDIS_STATUS_SUCCESS;
 case 129:

  if (InformationBufferLength != 4)
  {
   *BytesNeeded = 4;
   return NDIS_STATUS_INVALID_LENGTH;
  }
  *BytesRead = 4;
  return NDIS_STATUS_SUCCESS;

 case 130:

  *BytesRead = InformationBufferLength;

  return NDIS_STATUS_SUCCESS;
 }

 return NDIS_STATUS_INVALID_OID;
}
