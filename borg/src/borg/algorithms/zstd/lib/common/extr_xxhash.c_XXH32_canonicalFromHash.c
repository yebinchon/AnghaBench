
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int XXH32_hash_t ;
typedef int XXH32_canonical_t ;


 scalar_t__ XXH_CPU_LITTLE_ENDIAN ;
 int XXH_STATIC_ASSERT (int) ;
 int XXH_swap32 (int ) ;
 int memcpy (int *,int *,int) ;

void XXH32_canonicalFromHash(XXH32_canonical_t* dst, XXH32_hash_t hash)
{
    XXH_STATIC_ASSERT(sizeof(XXH32_canonical_t) == sizeof(XXH32_hash_t));
    if (XXH_CPU_LITTLE_ENDIAN) hash = XXH_swap32(hash);
    memcpy(dst, &hash, sizeof(*dst));
}
