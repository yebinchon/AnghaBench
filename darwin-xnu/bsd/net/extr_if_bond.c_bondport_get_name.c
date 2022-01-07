
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef TYPE_1__* bondport_ref ;
struct TYPE_3__ {char const* po_name; } ;



__attribute__((used)) static __inline__ const char *
bondport_get_name(bondport_ref p)
{
    return (p->po_name);
}
