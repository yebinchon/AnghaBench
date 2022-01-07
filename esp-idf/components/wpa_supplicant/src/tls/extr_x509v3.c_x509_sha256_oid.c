
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asn1_oid {int len; int* oid; } ;



__attribute__((used)) static int x509_sha256_oid(struct asn1_oid *oid)
{
 return oid->len == 9 &&
  oid->oid[0] == 2 &&
  oid->oid[1] == 16 &&
  oid->oid[2] == 840 &&
  oid->oid[3] == 1 &&
  oid->oid[4] == 101 &&
  oid->oid[5] == 3 &&
  oid->oid[6] == 4 &&
  oid->oid[7] == 2 &&
  oid->oid[8] == 1 ;
}
