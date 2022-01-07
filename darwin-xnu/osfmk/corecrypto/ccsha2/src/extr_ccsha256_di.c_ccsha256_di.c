
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct ccdigest_info {int dummy; } ;


 scalar_t__ CC_HAS_AVX1 () ;
 scalar_t__ CC_HAS_AVX2 () ;
 scalar_t__ CC_HAS_AVX512_AND_IN_KERNEL () ;
 int FIPSPOST_TRACE_EVENT ;
 struct ccdigest_info const ccsha256_ltc_di ;
 struct ccdigest_info const ccsha256_v6m_di ;
 struct ccdigest_info const ccsha256_vng_armv7neon_di ;
 struct ccdigest_info const ccsha256_vng_intel_AVX1_di ;
 struct ccdigest_info const ccsha256_vng_intel_AVX2_di ;
 struct ccdigest_info const ccsha256_vng_intel_SupplementalSSE3_di ;

const struct ccdigest_info *ccsha256_di(void)
{
    FIPSPOST_TRACE_EVENT;
    return &ccsha256_ltc_di;

}
