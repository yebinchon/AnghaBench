
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ccv_cache_t ;


 int ccv_cache_cleanup (int *) ;

void ccv_cache_close(ccv_cache_t* cache)
{


 ccv_cache_cleanup(cache);
}
