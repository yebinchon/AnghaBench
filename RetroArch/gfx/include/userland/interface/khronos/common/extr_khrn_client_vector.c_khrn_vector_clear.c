
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ size; scalar_t__ capacity; int * data; } ;
typedef TYPE_1__ KHRN_VECTOR_T ;


 int khrn_platform_free (int *) ;

void khrn_vector_clear(KHRN_VECTOR_T *vector)
{
   if (vector->data) {
      khrn_platform_free(vector->data);
   }
   vector->data = ((void*)0);
   vector->capacity = 0;
   vector->size = 0;
}
