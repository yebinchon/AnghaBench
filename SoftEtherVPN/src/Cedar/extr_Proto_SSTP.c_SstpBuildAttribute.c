
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ USHORT ;
typedef scalar_t__ UCHAR ;
struct TYPE_3__ {int TotalLength; int DataSize; scalar_t__* Data; scalar_t__ AttributeId; } ;
typedef TYPE_1__ SSTP_ATTRIBUTE ;
typedef int BUF ;


 scalar_t__ Endian16 (scalar_t__) ;
 int * NewBuf () ;
 int WriteBuf (int *,scalar_t__*,int) ;

BUF *SstpBuildAttribute(SSTP_ATTRIBUTE *a)
{
 UCHAR uc;
 USHORT us;
 BUF *b;

 if (a == ((void*)0))
 {
  return ((void*)0);
 }

 b = NewBuf();


 uc = 0;
 WriteBuf(b, &uc, sizeof(UCHAR));


 uc = a->AttributeId;
 WriteBuf(b, &uc, sizeof(UCHAR));


 a->TotalLength = a->DataSize + 4;
 us = (USHORT)a->TotalLength;
 us = Endian16(us);
 WriteBuf(b, &us, sizeof(USHORT));


 WriteBuf(b, a->Data, a->DataSize);

 return b;
}
