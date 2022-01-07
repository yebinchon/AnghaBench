
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int cache_info_t ;


 int cpuid_cache_info ;

cache_info_t *
cache_info(void)
{
 return &cpuid_cache_info;
}
