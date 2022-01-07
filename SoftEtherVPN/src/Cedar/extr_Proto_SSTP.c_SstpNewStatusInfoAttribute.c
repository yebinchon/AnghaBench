
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int UINT ;
typedef scalar_t__ UCHAR ;
struct TYPE_6__ {int Size; int Buf; } ;
typedef int SSTP_ATTRIBUTE ;
typedef TYPE_1__ BUF ;


 int FreeBuf (TYPE_1__*) ;
 TYPE_1__* NewBuf () ;
 int SSTP_ATTRIB_STATUS_INFO ;
 int * SstpNewAttribute (int ,int ,int ) ;
 int WriteBuf (TYPE_1__*,scalar_t__*,int) ;
 int WriteBufInt (TYPE_1__*,int ) ;

SSTP_ATTRIBUTE *SstpNewStatusInfoAttribute(UCHAR attrib_id, UINT status)
{
 SSTP_ATTRIBUTE *a;
 UCHAR uc;
 BUF *b = NewBuf();

 uc = 0;
 WriteBuf(b, &uc, 1);
 WriteBuf(b, &uc, 1);
 WriteBuf(b, &uc, 1);
 WriteBuf(b, &attrib_id, 1);

 WriteBufInt(b, status);

 a = SstpNewAttribute(SSTP_ATTRIB_STATUS_INFO, b->Buf, b->Size);

 FreeBuf(b);

 return a;
}
