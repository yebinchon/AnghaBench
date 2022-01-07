
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* ifbond_ref ;
struct TYPE_3__ {int ifb_retain_count; } ;


 int OSIncrementAtomic (int *) ;

__attribute__((used)) static __inline__ void
ifbond_retain(ifbond_ref ifb)
{
    OSIncrementAtomic(&ifb->ifb_retain_count);
}
