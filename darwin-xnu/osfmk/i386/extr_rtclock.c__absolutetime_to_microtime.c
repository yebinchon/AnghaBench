
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int clock_usec_t ;
typedef int clock_sec_t ;


 scalar_t__ NSEC_PER_SEC ;
 int NSEC_PER_USEC ;

__attribute__((used)) static inline uint32_t
_absolutetime_to_microtime(uint64_t abstime, clock_sec_t *secs, clock_usec_t *microsecs)
{
 uint32_t remain;
 *secs = abstime / (uint64_t)NSEC_PER_SEC;
 remain = (uint32_t)(abstime % (uint64_t)NSEC_PER_SEC);
 *microsecs = remain / NSEC_PER_USEC;
 return remain;
}
