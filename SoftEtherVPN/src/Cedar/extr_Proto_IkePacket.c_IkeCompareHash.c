
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ UINT ;
struct TYPE_8__ {TYPE_1__* Data; } ;
struct TYPE_7__ {TYPE_3__ Hash; } ;
struct TYPE_9__ {scalar_t__ PayloadType; TYPE_2__ Payload; } ;
struct TYPE_6__ {scalar_t__ Size; int Buf; } ;
typedef TYPE_4__ IKE_PACKET_PAYLOAD ;


 scalar_t__ Cmp (int ,void*,scalar_t__) ;
 scalar_t__ IKE_PAYLOAD_HASH ;

bool IkeCompareHash(IKE_PACKET_PAYLOAD *hash_payload, void *hash_data, UINT hash_size)
{


 if (hash_payload == ((void*)0) || hash_data == ((void*)0) || hash_size == 0)
 {
  return 0;
 }

 if (hash_payload->PayloadType != IKE_PAYLOAD_HASH)
 {
  return 0;
 }

 if (hash_payload->Payload.Hash.Data == ((void*)0))
 {
  return 0;
 }

 if (hash_payload->Payload.Hash.Data->Size != hash_size)
 {
  return 0;
 }






 if (Cmp(hash_payload->Payload.Hash.Data->Buf, hash_data, hash_size) != 0)
 {
  return 0;
 }

 return 1;
}
