
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int depth; int index; } ;
typedef TYPE_1__ hb_preset_index_t ;


 TYPE_1__* hb_preset_index_init (int ,int ) ;

hb_preset_index_t* hb_preset_index_dup(const hb_preset_index_t *path)
{
    if (path == ((void*)0))
        return ((void*)0);
    return hb_preset_index_init(path->index, path->depth);
}
