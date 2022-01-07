
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* ifbond_ref ;
struct TYPE_3__ {int ifb_flags; } ;


 int IFBF_CHANGE_IN_PROGRESS ;

__attribute__((used)) static __inline__ int
ifbond_flags_change_in_progress(ifbond_ref ifb)
{
    return ((ifb->ifb_flags & IFBF_CHANGE_IN_PROGRESS) != 0);
}
