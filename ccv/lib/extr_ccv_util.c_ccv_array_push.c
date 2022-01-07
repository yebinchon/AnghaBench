
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rnum; int size; scalar_t__ rsize; int data; } ;
typedef TYPE_1__ ccv_array_t ;


 int ccrealloc (int ,size_t) ;
 int ccv_array_get (TYPE_1__*,int) ;
 int ccv_max (int,int) ;
 int memcpy (int ,void const*,scalar_t__) ;

void ccv_array_push(ccv_array_t* array, const void* r)
{
 array->rnum++;
 if (array->rnum > array->size)
 {
  array->size = ccv_max(array->size * 3 / 2, array->size + 1);
  array->data = ccrealloc(array->data, (size_t)array->size * (size_t)array->rsize);
 }
 memcpy(ccv_array_get(array, array->rnum - 1), r, array->rsize);
}
