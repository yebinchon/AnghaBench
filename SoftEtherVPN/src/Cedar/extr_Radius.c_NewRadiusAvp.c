
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
typedef void* UCHAR ;
struct TYPE_4__ {int VendorId; int Data; void* DataSize; void* VendorCode; void* Type; } ;
typedef TYPE_1__ RADIUS_AVP ;


 int Copy (int ,void*,void*) ;
 int Debug (char*,int) ;
 TYPE_1__* ZeroMalloc (int) ;

RADIUS_AVP *NewRadiusAvp(UCHAR type, UINT vendor_id, UCHAR vendor_code, void *data, UINT size)
{
 RADIUS_AVP *p = ZeroMalloc(sizeof(RADIUS_AVP));

 p->Type = type;
 p->VendorId = vendor_id;
 p->VendorCode = vendor_code;
 p->DataSize = (UCHAR)size;
 Copy(p->Data, data, (UCHAR)size);

 if (size >= 256)
 {
  Debug("!! size = %u\n", size);
 }

 return p;
}
