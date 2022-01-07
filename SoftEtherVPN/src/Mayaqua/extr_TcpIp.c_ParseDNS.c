
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int hostname ;
typedef int UINT ;
typedef int UCHAR ;
struct TYPE_5__ {int Flag1; int NumQuery; } ;
struct TYPE_4__ {int TypeL7; int DnsQueryHost; } ;
typedef TYPE_1__ PKT ;
typedef TYPE_2__ DNSV4_HEADER ;


 int Endian16 (int ) ;
 int L7_DNS ;
 int MAX_SIZE ;
 int ParseDnsQuery (char*,int,int *,int) ;
 int StrCpy (int ,int,char*) ;

void ParseDNS(PKT *p, UCHAR *buf, UINT size)
{
 UCHAR *query_data;
 UINT query_data_size;
 DNSV4_HEADER *dns;
 char hostname[MAX_SIZE];
 if (p == ((void*)0)|| buf == ((void*)0))
 {
  return;
 }

 if (size < sizeof(DNSV4_HEADER))
 {
  return;
 }

 dns = (DNSV4_HEADER *)buf;

 if ((dns->Flag1 & 78) != 0 || (dns->Flag1 & 0x80) != 0)
 {

  return;
 }
 if (Endian16(dns->NumQuery) != 1)
 {

  return;
 }

 query_data = ((UCHAR *)dns) + sizeof(DNSV4_HEADER);
 query_data_size = size - sizeof(DNSV4_HEADER);


 if (ParseDnsQuery(hostname, sizeof(hostname), query_data, query_data_size) == 0)
 {

  return;
 }

 StrCpy(p->DnsQueryHost, sizeof(p->DnsQueryHost), hostname);
 p->TypeL7 = L7_DNS;
}
