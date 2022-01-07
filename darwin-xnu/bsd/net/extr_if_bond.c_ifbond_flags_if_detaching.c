
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* ifbond_ref ;
struct TYPE_3__ {int ifb_flags; } ;


 int IFBF_IF_DETACHING ;

__attribute__((used)) static __inline__ int
ifbond_flags_if_detaching(ifbond_ref ifb)
{
    return ((ifb->ifb_flags & IFBF_IF_DETACHING) != 0);
}
