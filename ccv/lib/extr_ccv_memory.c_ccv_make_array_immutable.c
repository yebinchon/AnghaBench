
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int uint64_t ;
struct TYPE_3__ {scalar_t__ sig; int size; int rsize; int data; int type; } ;
typedef TYPE_1__ ccv_array_t ;


 int CCV_EOF_SIGN ;
 int CCV_REUSABLE ;
 int assert (int) ;
 scalar_t__ ccv_cache_generate_signature (int ,int,int ,int ) ;

void ccv_make_array_immutable(ccv_array_t* array)
{
 assert(array->sig == 0);
 array->type &= ~CCV_REUSABLE;

 array->sig = ccv_cache_generate_signature(array->data, array->size * array->rsize, (uint64_t)array->rsize, CCV_EOF_SIGN);
}
