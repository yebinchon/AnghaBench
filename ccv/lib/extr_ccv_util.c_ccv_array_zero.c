
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ rsize; scalar_t__ size; int data; } ;
typedef TYPE_1__ ccv_array_t ;


 int memset (int ,int ,size_t) ;

void ccv_array_zero(ccv_array_t* array)
{
 memset(array->data, 0, (size_t)array->size * (size_t)array->rsize);
}
