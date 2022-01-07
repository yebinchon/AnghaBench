
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int type; scalar_t__ sig; int size; int rsize; struct TYPE_5__* data; scalar_t__ refcount; } ;
typedef TYPE_1__ ccv_array_t ;


 int CCV_REUSABLE ;
 int ccfree (TYPE_1__*) ;
 int ccv_cache ;
 int ccv_cache_opt ;
 int ccv_cache_put (int *,scalar_t__,TYPE_1__*,size_t,int) ;

void ccv_array_free(ccv_array_t* array)
{
 if (!ccv_cache_opt || !(array->type & CCV_REUSABLE) || array->sig == 0)
 {
  array->refcount = 0;
  ccfree(array->data);
  ccfree(array);
 } else {
  size_t size = sizeof(ccv_array_t) + array->size * array->rsize;
  ccv_cache_put(&ccv_cache, array->sig, array, size, 1 );
 }
}
