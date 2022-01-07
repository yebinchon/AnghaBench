
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct label {TYPE_1__* l_perpolicy; } ;
struct TYPE_2__ {scalar_t__ l_ptr; } ;


 int KASSERT (int ,char*) ;

intptr_t
mac_label_get(struct label *l, int slot)
{
 KASSERT(l != ((void*)0), ("mac_label_get: NULL label"));

 return ((intptr_t) (l->l_perpolicy[slot].l_ptr));
}
