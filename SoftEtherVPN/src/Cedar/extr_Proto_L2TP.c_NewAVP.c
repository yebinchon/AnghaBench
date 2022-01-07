
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef void* USHORT ;
typedef scalar_t__ UINT ;
struct TYPE_4__ {int Mandatory; scalar_t__ DataSize; int Data; void* VendorID; void* Type; } ;
typedef TYPE_1__ L2TP_AVP ;


 int Clone (void*,scalar_t__) ;
 TYPE_1__* ZeroMalloc (int) ;

L2TP_AVP *NewAVP(USHORT type, bool mandatory, USHORT vendor_id, void *data, UINT data_size)
{
 L2TP_AVP *a;

 if (data_size != 0 && data == ((void*)0))
 {
  return ((void*)0);
 }

 a = ZeroMalloc(sizeof(L2TP_AVP));

 a->Type = type;
 a->Mandatory = mandatory;
 a->VendorID = vendor_id;
 a->Data = Clone(data, data_size);
 a->DataSize = data_size;

 return a;
}
