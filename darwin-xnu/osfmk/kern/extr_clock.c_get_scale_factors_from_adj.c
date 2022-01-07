
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
typedef int int64_t ;


 scalar_t__ NSEC_PER_SEC ;
 int ticks_per_sec ;

__attribute__((used)) static void
get_scale_factors_from_adj(int64_t adjustment, uint64_t* tick_scale_x, uint64_t* s_scale_ns, int64_t* s_adj_nsx)
{
 uint64_t scale;
 int64_t nano, frac;
 scale = (uint64_t)1 << 63;
 scale += (adjustment / 1024) * 2199;
 scale /= ticks_per_sec;
 *tick_scale_x = scale * 2;






 nano = (adjustment > 0)? adjustment >> 32 : -((-adjustment) >> 32);
 scale = (uint64_t) NSEC_PER_SEC;
 scale += nano;
 *s_scale_ns = scale;






 frac = (adjustment > 0)? ((uint32_t) adjustment) : -((uint32_t) (-adjustment));
 *s_adj_nsx = (frac>0)? frac << 32 : -( (-frac) << 32);

 return;
}
