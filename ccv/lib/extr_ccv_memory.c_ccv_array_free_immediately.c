
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {struct TYPE_4__* data; scalar_t__ refcount; } ;
typedef TYPE_1__ ccv_array_t ;


 int ccfree (TYPE_1__*) ;

void ccv_array_free_immediately(ccv_array_t* array)
{
 array->refcount = 0;
 ccfree(array->data);
 ccfree(array);
}
