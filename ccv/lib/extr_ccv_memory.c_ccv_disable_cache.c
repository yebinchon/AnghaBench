
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ccv_cache ;
 int ccv_cache_close (int *) ;
 scalar_t__ ccv_cache_opt ;

void ccv_disable_cache(void)
{
 ccv_cache_opt = 0;
 ccv_cache_close(&ccv_cache);
}
