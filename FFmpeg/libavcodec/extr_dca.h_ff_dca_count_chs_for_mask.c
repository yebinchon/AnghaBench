
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int av_popcount (unsigned int) ;

__attribute__((used)) static inline int ff_dca_count_chs_for_mask(unsigned int mask)
{
    return av_popcount((mask & 0xffff) | ((mask & 0xae66) << 16));
}
