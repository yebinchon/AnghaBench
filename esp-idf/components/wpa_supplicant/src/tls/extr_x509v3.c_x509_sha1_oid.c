
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asn1_oid {int len; int* oid; } ;



__attribute__((used)) static int x509_sha1_oid(struct asn1_oid *oid)
{
 return oid->len == 6 &&
  oid->oid[0] == 1 &&
  oid->oid[1] == 3 &&
  oid->oid[2] == 14 &&
  oid->oid[3] == 3 &&
  oid->oid[4] == 2 &&
  oid->oid[5] == 26 ;
}
