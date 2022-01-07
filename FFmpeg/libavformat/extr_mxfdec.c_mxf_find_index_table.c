
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int nb_index_tables; TYPE_1__* index_tables; } ;
struct TYPE_5__ {int index_sid; } ;
typedef TYPE_1__ MXFIndexTable ;
typedef TYPE_2__ MXFContext ;



__attribute__((used)) static MXFIndexTable *mxf_find_index_table(MXFContext *mxf, int index_sid)
{
    int i;
    for (i = 0; i < mxf->nb_index_tables; i++)
        if (mxf->index_tables[i].index_sid == index_sid)
            return &mxf->index_tables[i];
    return ((void*)0);
}
