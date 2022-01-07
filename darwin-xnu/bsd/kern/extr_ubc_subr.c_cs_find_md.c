
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
struct cs_hash {int dummy; } ;


 scalar_t__ CS_HASHTYPE_SHA1 ;
 scalar_t__ CS_HASHTYPE_SHA256 ;
 scalar_t__ CS_HASHTYPE_SHA256_TRUNCATED ;
 scalar_t__ CS_HASHTYPE_SHA384 ;
 struct cs_hash const cs_hash_sha1 ;
 struct cs_hash const cs_hash_sha256 ;
 struct cs_hash const cs_hash_sha256_truncate ;
 struct cs_hash const cs_hash_sha384 ;

__attribute__((used)) static struct cs_hash const *
cs_find_md(uint8_t type)
{
 if (type == CS_HASHTYPE_SHA1) {
  return &cs_hash_sha1;
 }
 return ((void*)0);
}
