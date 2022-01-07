
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int header ;
typedef int USHORT ;
struct TYPE_4__ {int Flag1; int Flag2; void* NumQuery; void* TransactionId; } ;
typedef TYPE_1__ DNSV4_HEADER ;
typedef int BUF ;


 int BuildDnsQueryPacket (int *,char*,int) ;
 void* Endian16 (int) ;
 int * NewBuf () ;
 int SeekBufToBegin (int *) ;
 int WriteBuf (int *,TYPE_1__*,int) ;
 int Zero (TYPE_1__*,int) ;

BUF *NnBuildDnsQueryPacket(char *hostname, USHORT tran_id)
{
 BUF *buf = NewBuf();
 DNSV4_HEADER header;

 Zero(&header, sizeof(header));

 header.TransactionId = Endian16(tran_id);
 header.Flag1 = 0x01;
 header.Flag2 = 0x00;
 header.NumQuery = Endian16(1);

 WriteBuf(buf, &header, sizeof(header));

 BuildDnsQueryPacket(buf, hostname, 0);

 SeekBufToBegin(buf);

 return buf;
}
