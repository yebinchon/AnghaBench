
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ count; scalar_t__ length; size_t last; int sum; int * h; } ;
typedef int TIME_T ;
typedef TYPE_1__ FILTER_T ;


 int filter_drop (TYPE_1__*) ;
 size_t filter_index_wrap (size_t,scalar_t__) ;
 int saturate_add (int ,int ) ;

__attribute__((used)) static void filter_insert(FILTER_T *filter, TIME_T sample)
{
   if (filter->count == filter->length)
      filter_drop(filter);

   filter->last = filter_index_wrap(filter->last, filter->length);
   filter->h[filter->last] = sample;
   filter->sum = saturate_add(filter->sum, sample);
   filter->count++;
}
