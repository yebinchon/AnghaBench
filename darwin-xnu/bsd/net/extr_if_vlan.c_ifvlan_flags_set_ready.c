
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* ifvlan_ref ;
struct TYPE_3__ {int ifv_flags; } ;


 int IFVF_READY ;

__attribute__((used)) static __inline__ void
ifvlan_flags_set_ready(ifvlan_ref ifv)
{
    ifv->ifv_flags |= IFVF_READY;
    return;
}
