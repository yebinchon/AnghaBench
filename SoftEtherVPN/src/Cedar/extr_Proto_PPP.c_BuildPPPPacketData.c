
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int USHORT ;
typedef int UCHAR ;
struct TYPE_3__ {int* Data; int DataSize; int Lcp; scalar_t__ IsControl; int Protocol; } ;
typedef TYPE_1__ PPP_PACKET ;
typedef int BUF ;


 int * BuildLCPData (int ) ;
 int Endian16 (int ) ;
 int FreeBuf (int *) ;
 int * NewBuf () ;
 int SeekBuf (int *,int ,int ) ;
 int WriteBuf (int *,int*,int) ;
 int WriteBufBuf (int *,int *) ;

BUF *BuildPPPPacketData(PPP_PACKET *pp)
{
 BUF *ret;
 UCHAR c;
 USHORT us;

 if (pp == ((void*)0))
 {
  return ((void*)0);
 }

 ret = NewBuf();


 c = 0xff;
 WriteBuf(ret, &c, 1);


 c = 0x03;
 WriteBuf(ret, &c, 1);


 us = Endian16(pp->Protocol);
 WriteBuf(ret, &us, 2);

 if (pp->IsControl)
 {

  BUF *b = BuildLCPData(pp->Lcp);

  WriteBufBuf(ret, b);

  FreeBuf(b);
 }
 else
 {

  WriteBuf(ret, pp->Data, pp->DataSize);
 }

 SeekBuf(ret, 0, 0);

 return ret;
}
