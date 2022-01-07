
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int UINT ;
typedef int UCHAR ;
struct TYPE_4__ {int IsControl; int DataSize; int Data; } ;
typedef TYPE_1__ SSTP_PACKET ;


 int Clone (int *,int ) ;
 TYPE_1__* ZeroMalloc (int) ;

SSTP_PACKET *SstpNewDataPacket(UCHAR *data, UINT size)
{
 SSTP_PACKET *p = ZeroMalloc(sizeof(SSTP_PACKET));

 p->IsControl = 0;
 p->Data = Clone(data, size);
 p->DataSize = size;

 return p;
}
