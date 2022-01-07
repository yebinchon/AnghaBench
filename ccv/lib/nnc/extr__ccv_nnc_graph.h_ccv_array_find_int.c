
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int rnum; } ;
typedef TYPE_1__ ccv_array_t ;


 scalar_t__ ccv_array_get (TYPE_1__*,int) ;

__attribute__((used)) inline static int ccv_array_find_int(ccv_array_t* ints, const int idx)
{
 int i;
 for (i = 0; i < ints->rnum; i++)
  if (*(int*)ccv_array_get(ints, i) == idx)
   return 1;
 return 0;
}
