
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* bondport_ref ;
struct TYPE_3__ {int po_flags; } ;


 int BONDPORT_FLAGS_READY ;

__attribute__((used)) static __inline__ int
bondport_flags_ready(bondport_ref p)
{
    return ((p->po_flags & BONDPORT_FLAGS_READY) != 0);
}
