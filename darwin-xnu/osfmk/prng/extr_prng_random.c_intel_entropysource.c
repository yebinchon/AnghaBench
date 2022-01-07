
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;


 int CPUID_FEATURE_RDRAND ;
 int CPUID_LEAF7_FEATURE_RDSEED ;
 int assert (int) ;
 int cpuid_features () ;
 int cpuid_leaf7_features () ;
 size_t rdrand_seed (void*,size_t) ;
 size_t rdseed_seed (void*,size_t) ;

__attribute__((used)) static void
intel_entropysource(void * buf, size_t * nbytes)
{
 size_t nwords;


 assert(*nbytes % sizeof(uint64_t) == 0);

 nwords = (*nbytes) / sizeof(uint64_t);
 if (cpuid_leaf7_features() & CPUID_LEAF7_FEATURE_RDSEED) {
  nwords = rdseed_seed(buf, nwords);
  *nbytes = nwords * sizeof(uint64_t);
 } else if (cpuid_features() & CPUID_FEATURE_RDRAND) {
  nwords = rdrand_seed(buf, nwords);
  *nbytes = nwords * sizeof(uint64_t);
 } else {
  *nbytes = 0;
 }
}
