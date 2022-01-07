
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int USHORT ;
struct TYPE_6__ {int Size; int * Buf; } ;
typedef TYPE_1__ BUF ;


 TYPE_1__* BuildDnsHostName (char*) ;
 int Endian16 (int) ;
 int FreeBuf (TYPE_1__*) ;
 int WriteBuf (TYPE_1__*,int *,int) ;

void BuildDnsQueryPacket(BUF *b, char *hostname, bool ptr)
{
 USHORT val;
 BUF *c;

 if (b == ((void*)0) || hostname == ((void*)0))
 {
  return;
 }


 c = BuildDnsHostName(hostname);
 if (c == ((void*)0))
 {
  return;
 }

 WriteBuf(b, c->Buf, c->Size);
 FreeBuf(c);


 if (ptr == 0)
 {
  val = Endian16(0x0001);
 }
 else
 {
  val = Endian16(0x000c);
 }
 WriteBuf(b, &val, 2);

 val = Endian16(0x0001);
 WriteBuf(b, &val, 2);
}
