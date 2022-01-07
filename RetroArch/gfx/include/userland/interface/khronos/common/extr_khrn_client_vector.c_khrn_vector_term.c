
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ data; } ;
typedef TYPE_1__ KHRN_VECTOR_T ;


 int khrn_platform_free (scalar_t__) ;

void khrn_vector_term(KHRN_VECTOR_T *vector)
{
   if (vector->data) {
      khrn_platform_free(vector->data);
   }
}
