
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* bondport_ref ;
struct TYPE_3__ {int po_ifp; } ;


 int ifnet_index (int ) ;

__attribute__((used)) static __inline__ int
bondport_get_index(bondport_ref p)
{
    return (ifnet_index(p->po_ifp));
}
