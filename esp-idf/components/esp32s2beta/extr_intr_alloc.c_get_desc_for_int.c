
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_7__ {int intno; int cpu; } ;
typedef TYPE_1__ vector_desc_t ;


 int MALLOC_CAP_8BIT ;
 int MALLOC_CAP_INTERNAL ;
 TYPE_1__* find_desc_for_int (int,int) ;
 TYPE_1__* heap_caps_malloc (int,int) ;
 int insert_vector_desc (TYPE_1__*) ;
 int memset (TYPE_1__*,int ,int) ;

__attribute__((used)) static vector_desc_t *get_desc_for_int(int intno, int cpu)
{
    vector_desc_t *vd=find_desc_for_int(intno, cpu);
    if (vd==((void*)0)) {
        vector_desc_t *newvd=heap_caps_malloc(sizeof(vector_desc_t), MALLOC_CAP_INTERNAL|MALLOC_CAP_8BIT);
        if (newvd==((void*)0)) return ((void*)0);
        memset(newvd, 0, sizeof(vector_desc_t));
        newvd->intno=intno;
        newvd->cpu=cpu;
        insert_vector_desc(newvd);
        return newvd;
    } else {
        return vd;
    }
}
