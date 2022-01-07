
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef scalar_t__ uint64_t ;
typedef TYPE_1__* kern_allocation_name_t ;
typedef scalar_t__ int64_t ;
struct TYPE_5__ {scalar_t__ total; scalar_t__ peak; int tag; } ;


 scalar_t__ OSAddAtomic64 (scalar_t__,scalar_t__*) ;
 int OSCompareAndSwap64 (scalar_t__,scalar_t__,scalar_t__*) ;
 int assertf (int,char*,TYPE_1__*) ;
 int vm_tag_alloc (TYPE_1__*) ;

void
kern_allocation_update_size(kern_allocation_name_t allocation, int64_t delta)
{
    uint64_t prior;

    if (delta < 0) {
  assertf(allocation->total >= ((uint64_t)-delta), "name %p", allocation);
    }
    prior = OSAddAtomic64(delta, &allocation->total);
    if (!prior && !allocation->tag) vm_tag_alloc(allocation);
}
