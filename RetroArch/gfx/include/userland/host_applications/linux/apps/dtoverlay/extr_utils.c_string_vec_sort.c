
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int num_strings; int strings; } ;
typedef TYPE_1__ STRING_VEC_T ;


 int qsort (int ,int ,int,int *) ;
 int string_vec_compare ;

void string_vec_sort(STRING_VEC_T *vec)
{
    qsort(vec->strings, vec->num_strings, sizeof(char *), &string_vec_compare);
}
