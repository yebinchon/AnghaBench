
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef TYPE_1__* ifbond_ref ;
typedef TYPE_2__* bondport_ref ;
struct TYPE_10__ {scalar_t__ verbose; } ;
struct TYPE_9__ {TYPE_1__* po_bond; } ;
struct TYPE_8__ {int ifb_distributing_count; TYPE_2__** ifb_distributing_array; } ;


 scalar_t__ bondport_flags_distributing (TYPE_2__*) ;
 int bondport_flags_set_distributing (TYPE_2__*) ;
 int bondport_get_name (TYPE_2__*) ;
 TYPE_3__* g_bond ;
 int timestamp_printf (char*,int ) ;

__attribute__((used)) static void
bondport_enable_distributing(bondport_ref p)
{
    if (bondport_flags_distributing(p) == 0) {
 ifbond_ref bond = p->po_bond;

 bond->ifb_distributing_array[bond->ifb_distributing_count++] = p;
 if (g_bond->verbose) {
     timestamp_printf("[%s] Distribution Enabled\n",
        bondport_get_name(p));
 }
 bondport_flags_set_distributing(p);
    }
    return;
}
