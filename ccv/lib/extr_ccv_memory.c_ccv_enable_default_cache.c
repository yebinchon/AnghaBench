
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int CCV_DEFAULT_CACHE_SIZE ;
 int ccv_enable_cache (int ) ;

void ccv_enable_default_cache(void)
{
 ccv_enable_cache(CCV_DEFAULT_CACHE_SIZE);
}
