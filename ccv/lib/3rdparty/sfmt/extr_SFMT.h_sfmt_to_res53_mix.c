
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;


 double sfmt_to_res53 (int) ;

__attribute__((used)) inline static double sfmt_to_res53_mix(uint32_t x, uint32_t y)
{
    return sfmt_to_res53(x | ((uint64_t)y << 32));
}
