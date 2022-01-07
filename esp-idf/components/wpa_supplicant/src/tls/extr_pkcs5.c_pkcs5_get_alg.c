
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct asn1_oid {int len; int* oid; } ;
typedef enum pkcs5_alg { ____Placeholder_pkcs5_alg } pkcs5_alg ;


 int PKCS5_ALG_MD5_DES_CBC ;
 int PKCS5_ALG_UNKNOWN ;

__attribute__((used)) static enum pkcs5_alg pkcs5_get_alg(struct asn1_oid *oid)
{
 if (oid->len == 7 &&
     oid->oid[0] == 1 &&
     oid->oid[1] == 2 &&
     oid->oid[2] == 840 &&
     oid->oid[3] == 113549 &&
     oid->oid[4] == 1 &&
     oid->oid[5] == 5 &&
     oid->oid[6] == 3 )
  return PKCS5_ALG_MD5_DES_CBC;

 return PKCS5_ALG_UNKNOWN;
}
