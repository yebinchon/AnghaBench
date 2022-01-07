
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* ifvlan_ref ;
struct TYPE_3__ {int ifv_flags; } ;


 int IFVF_DETACHING ;

__attribute__((used)) static __inline__ int
ifvlan_flags_detaching(ifvlan_ref ifv)
{
    return ((ifv->ifv_flags & IFVF_DETACHING) != 0);
}
