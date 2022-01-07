
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int depth; int * index; } ;
typedef TYPE_1__ hb_preset_index_t ;


 int HB_MAX_PRESET_FOLDER_DEPTH ;

void hb_preset_index_append(hb_preset_index_t *dst,
                            const hb_preset_index_t *src)
{
    int ii;
    for (ii = 0; ii < src->depth &&
                 dst->depth < HB_MAX_PRESET_FOLDER_DEPTH; ii++, dst->depth++)
    {
        dst->index[dst->depth] = src->index[ii];
    }
}
