
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int type ;
typedef int ttl ;
typedef int magic ;
typedef int len ;
typedef int ip_addr ;
typedef int clas ;
typedef int USHORT ;
typedef int UINT ;
typedef int IP ;
typedef int BUF ;


 int Endian16 (int) ;
 int Endian32 (int ) ;
 int IPToUINT (int *) ;
 int NAT_DNS_RESPONSE_TTL ;
 int WriteBuf (int *,int*,int) ;

void BuildDnsResponsePacketA(BUF *b, IP *ip)
{
 UINT ip_addr;
 USHORT magic;
 USHORT type, clas;
 UINT ttl;
 USHORT len;

 if (b == ((void*)0) || ip == ((void*)0))
 {
  return;
 }

 ip_addr = IPToUINT(ip);
 magic = Endian16(0xc00c);
 type = Endian16(0x0001);
 clas = Endian16(0x0001);
 ttl = Endian32(NAT_DNS_RESPONSE_TTL);
 len = Endian16((USHORT)sizeof(ttl));

 WriteBuf(b, &magic, sizeof(magic));
 WriteBuf(b, &type, sizeof(type));
 WriteBuf(b, &clas, sizeof(clas));
 WriteBuf(b, &ttl, sizeof(ttl));
 WriteBuf(b, &len, sizeof(len));
 WriteBuf(b, &ip_addr, sizeof(ip_addr));
}
