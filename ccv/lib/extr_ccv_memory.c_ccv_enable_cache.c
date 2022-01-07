
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ccv_array_free_immediately ;
 int ccv_cache ;
 int ccv_cache_init (int *,size_t,int,int ,int ) ;
 int ccv_cache_opt ;
 int ccv_matrix_free_immediately ;

void ccv_enable_cache(size_t size)
{
 ccv_cache_opt = 1;
 ccv_cache_init(&ccv_cache, size, 2, ccv_matrix_free_immediately, ccv_array_free_immediately);
}
