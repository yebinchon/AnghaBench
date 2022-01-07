
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int cpu; int intno; struct TYPE_4__* next; } ;
typedef TYPE_1__ vector_desc_t ;


 TYPE_1__* vector_desc_head ;

__attribute__((used)) static vector_desc_t *find_desc_for_int(int intno, int cpu)
{
    vector_desc_t *vd=vector_desc_head;
    while(vd!=((void*)0)) {
        if (vd->cpu==cpu && vd->intno==intno) break;
        vd=vd->next;
    }
    return vd;
}
