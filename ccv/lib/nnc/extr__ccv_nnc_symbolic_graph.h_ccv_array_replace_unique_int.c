
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int rnum; } ;
typedef TYPE_1__ ccv_array_t ;


 scalar_t__ ccv_array_get (TYPE_1__*,int) ;
 int ccv_array_push (TYPE_1__*,int const*) ;

__attribute__((used)) inline static void ccv_array_replace_unique_int(ccv_array_t* ints, const int idx, const int outgoing)
{
 int i;
 int flag = 0;
 for (i = 0; i < ints->rnum;)
 {
  if (*(int*)ccv_array_get(ints, i) == idx)
  {
   if (flag)
   {
    if (i < ints->rnum - 1)
     *(int*)ccv_array_get(ints, i) = *(int*)ccv_array_get(ints, ints->rnum - 1);
    --ints->rnum;
    continue;
   }
   *(int*)ccv_array_get(ints, i) = outgoing;
   flag = 1;
  } else if (*(int*)ccv_array_get(ints, i) == outgoing) {

   if (flag)
   {
    if (i < ints->rnum - 1)
     *(int*)ccv_array_get(ints, i) = *(int*)ccv_array_get(ints, ints->rnum - 1);
    --ints->rnum;
    continue;
   }
   flag = 1;
  }
  ++i;
 }
 if (!flag)
  ccv_array_push(ints, &outgoing);
}
