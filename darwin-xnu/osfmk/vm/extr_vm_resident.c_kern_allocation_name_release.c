
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* kern_allocation_name_t ;
struct TYPE_5__ {scalar_t__ refcount; int subtotalscount; } ;


 int KA_NAME_LEN (TYPE_1__*) ;
 int KA_SIZE (int ,int ) ;
 int OSAddAtomic16 (int,scalar_t__*) ;
 int assert (int) ;
 int kfree (TYPE_1__*,int ) ;

void
kern_allocation_name_release(kern_allocation_name_t allocation)
{
    assert(allocation->refcount > 0);
    if (1 == OSAddAtomic16(-1, &allocation->refcount))
    {
        kfree(allocation, KA_SIZE(KA_NAME_LEN(allocation), allocation->subtotalscount));
    }
}
