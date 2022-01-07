
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* ifvlan_ref ;
struct TYPE_3__ {scalar_t__ ifv_signature; scalar_t__ ifv_retain_count; } ;


 scalar_t__ IFV_SIGNATURE ;
 int OSIncrementAtomic (scalar_t__*) ;
 int panic (char*) ;

__attribute__((used)) static void
ifvlan_retain(ifvlan_ref ifv)
{
    if (ifv->ifv_signature != IFV_SIGNATURE) {
 panic("ifvlan_retain: bad signature\n");
    }
    if (ifv->ifv_retain_count == 0) {
 panic("ifvlan_retain: retain count is 0\n");
    }
    OSIncrementAtomic(&ifv->ifv_retain_count);
}
