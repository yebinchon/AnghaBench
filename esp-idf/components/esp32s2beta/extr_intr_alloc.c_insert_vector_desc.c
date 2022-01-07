
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ cpu; scalar_t__ intno; struct TYPE_4__* next; } ;
typedef TYPE_1__ vector_desc_t ;


 TYPE_1__* vector_desc_head ;

__attribute__((used)) static void insert_vector_desc(vector_desc_t *to_insert)
{
    vector_desc_t *vd=vector_desc_head;
    vector_desc_t *prev=((void*)0);
    while(vd!=((void*)0)) {
        if (vd->cpu > to_insert->cpu) break;
        if (vd->cpu == to_insert->cpu && vd->intno >= to_insert->intno) break;
        prev=vd;
        vd=vd->next;
    }
    if ((vector_desc_head==((void*)0)) || (prev==((void*)0))) {

        to_insert->next = vd;
        vector_desc_head=to_insert;
    } else {
        prev->next=to_insert;
        to_insert->next=vd;
    }
}
