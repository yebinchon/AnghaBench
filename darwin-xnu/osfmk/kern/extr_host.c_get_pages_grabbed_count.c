
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint64_t ;
typedef TYPE_1__* processor_t ;
struct TYPE_4__ {struct TYPE_4__* processor_list; } ;


 scalar_t__ PROCESSOR_DATA (TYPE_1__*,int ) ;
 int page_grab_count ;
 TYPE_1__* processor_list ;
 int processor_list_lock ;
 int simple_lock (int *) ;
 int simple_unlock (int *) ;

uint64_t
get_pages_grabbed_count(void)
{
 processor_t processor;
        uint64_t pages_grabbed_count = 0;

 simple_lock(&processor_list_lock);

 processor = processor_list;

 while (processor) {
         pages_grabbed_count += PROCESSOR_DATA(processor, page_grab_count);
  processor = processor->processor_list;
 }
 simple_unlock(&processor_list_lock);

 return(pages_grabbed_count);
}
