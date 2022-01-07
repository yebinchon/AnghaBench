
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
typedef int UCHAR ;
struct TYPE_4__ {int DataSize; int Data; int AttributeId; } ;
typedef TYPE_1__ SSTP_ATTRIBUTE ;


 int Clone (int *,int ) ;
 TYPE_1__* ZeroMalloc (int) ;

SSTP_ATTRIBUTE *SstpNewAttribute(UCHAR attribute_id, UCHAR *data, UINT data_size)
{
 SSTP_ATTRIBUTE *a = ZeroMalloc(sizeof(SSTP_ATTRIBUTE));

 a->AttributeId = attribute_id;
 a->Data = Clone(data, data_size);
 a->DataSize = data_size;

 return a;
}
