
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int USHORT ;
typedef int UINT ;
struct TYPE_6__ {int Size; int* Buf; } ;
typedef TYPE_1__ BUF ;


 TYPE_1__* BuildDnsHostName (char*) ;
 int Endian16 (int) ;
 int Endian32 (int ) ;
 int FreeBuf (TYPE_1__*) ;
 int NAT_DNS_RESPONSE_TTL ;
 int WriteBuf (TYPE_1__*,int*,int) ;

void BuildDnsResponsePacketPtr(BUF *b, char *hostname)
{
 USHORT magic;
 USHORT type, clas;
 UINT ttl;
 USHORT len;
 BUF *c;

 if (b == ((void*)0) || hostname == ((void*)0))
 {
  return;
 }

 magic = Endian16(0xc00c);
 type = Endian16(0x000c);
 clas = Endian16(0x0001);
 ttl = Endian32(NAT_DNS_RESPONSE_TTL);

 c = BuildDnsHostName(hostname);
 if (c == ((void*)0))
 {
  return;
 }
 len = Endian16((USHORT)c->Size);

 WriteBuf(b, &magic, 2);
 WriteBuf(b, &type, 2);
 WriteBuf(b, &clas, 2);
 WriteBuf(b, &ttl, 4);
 WriteBuf(b, &len, 2);
 WriteBuf(b, c->Buf, c->Size);
 FreeBuf(c);
}
