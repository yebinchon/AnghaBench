
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XXH64_hash_t ;
typedef int XXH64_canonical_t ;


 scalar_t__ XXH_CPU_LITTLE_ENDIAN ;
 int XXH_STATIC_ASSERT (int) ;
 int XXH_swap64 (int ) ;
 int memcpy (int *,int *,int) ;

void XXH64_canonicalFromHash(XXH64_canonical_t* dst, XXH64_hash_t hash)
{
    XXH_STATIC_ASSERT(sizeof(XXH64_canonical_t) == sizeof(XXH64_hash_t));
    if (XXH_CPU_LITTLE_ENDIAN) hash = XXH_swap64(hash);
    memcpy(dst, &hash, sizeof(*dst));
}
