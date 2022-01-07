
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef scalar_t__ uint32_t ;
struct TYPE_3__ {scalar_t__ size; int * data; scalar_t__ capacity; } ;
typedef TYPE_1__ KHRN_VECTOR_T ;


 int * khrn_platform_malloc (scalar_t__,char*) ;

void khrn_vector_init(KHRN_VECTOR_T *vector, uint32_t capacity)
{
   vector->data = (capacity == 0) ? ((void*)0) : khrn_platform_malloc(capacity, "KHRN_VECTOR_T.data");
   vector->capacity = vector->data ? capacity : 0;
   vector->size = 0;
}
