
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct label {TYPE_1__* l_perpolicy; } ;
struct TYPE_2__ {void* l_ptr; } ;


 int KASSERT (int ,char*) ;

void
mac_label_set(struct label *l, int slot, intptr_t v)
{
 KASSERT(l != ((void*)0), ("mac_label_set: NULL label"));

 l->l_perpolicy[slot].l_ptr = (void *) v;
}
