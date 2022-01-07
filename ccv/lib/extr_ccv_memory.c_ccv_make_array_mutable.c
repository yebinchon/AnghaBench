
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int type; scalar_t__ sig; } ;
typedef TYPE_1__ ccv_array_t ;


 int CCV_REUSABLE ;

void ccv_make_array_mutable(ccv_array_t* array)
{
 array->sig = 0;
 array->type &= ~CCV_REUSABLE;
}
