
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int size; int rnum; scalar_t__ rsize; int data; } ;
typedef TYPE_1__ ccv_array_t ;


 int ccrealloc (int ,size_t) ;
 int ccv_array_get (TYPE_1__*,int) ;
 int ccv_max (int,int) ;
 int memset (int ,int ,size_t) ;

void ccv_array_resize(ccv_array_t* array, int rnum)
{
 if (rnum > array->size)
 {
  array->size = ccv_max(array->size * 3 / 2, rnum);
  array->data = ccrealloc(array->data, (size_t)array->size * (size_t)array->rsize);
 }
 memset(ccv_array_get(array, array->rnum), 0, (size_t)array->rsize * (size_t)(rnum - array->rnum));
 array->rnum = rnum;
}
