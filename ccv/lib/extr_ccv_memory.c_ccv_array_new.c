
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ uint64_t ;
struct TYPE_3__ {int type; int refcount; int rsize; scalar_t__ size; scalar_t__ data; scalar_t__ rnum; scalar_t__ sig; } ;
typedef TYPE_1__ ccv_array_t ;


 int CCV_GARBAGE ;
 int CCV_REUSABLE ;
 int assert (int) ;
 scalar_t__ ccmalloc (size_t) ;
 int ccv_cache ;
 scalar_t__ ccv_cache_opt ;
 scalar_t__ ccv_cache_out (int *,scalar_t__,int*) ;
 scalar_t__ ccv_max (int,int) ;

ccv_array_t* ccv_array_new(int rsize, int rnum, uint64_t sig)
{
 ccv_array_t* array;
 if (ccv_cache_opt && sig != 0)
 {
  uint8_t type;
  array = (ccv_array_t*)ccv_cache_out(&ccv_cache, sig, &type);
  if (array)
  {
   assert(type == 1);
   array->type |= CCV_GARBAGE;
   array->refcount = 1;
   return array;
  }
 }
 array = (ccv_array_t*)ccmalloc(sizeof(ccv_array_t));
 array->sig = sig;
 array->type = CCV_REUSABLE & ~CCV_GARBAGE;
 array->rnum = 0;
 array->rsize = rsize;
 array->size = ccv_max(rnum, 2 );
 array->data = ccmalloc((size_t)array->size * (size_t)rsize);
 return array;
}
