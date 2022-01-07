
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int * strings; scalar_t__ max_strings; scalar_t__ num_strings; } ;
typedef TYPE_1__ STRING_VEC_T ;



void string_vec_init(STRING_VEC_T *vec)
{
    vec->num_strings = 0;
    vec->max_strings = 0;
    vec->strings = ((void*)0);
}
