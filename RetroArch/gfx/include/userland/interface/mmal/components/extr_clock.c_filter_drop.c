
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t first; int count; int length; scalar_t__* h; int sum; } ;
typedef TYPE_1__ FILTER_T ;


 size_t filter_index_wrap (size_t,int ) ;

__attribute__((used)) static void filter_drop(FILTER_T *filter)
{
   if (!filter->count)
      return;

   filter->sum -= filter->h[filter->first];
   filter->first = filter_index_wrap(filter->first, filter->length);
   filter->count--;
}
