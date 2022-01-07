
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int depth; int index; } ;
typedef TYPE_1__ hb_preset_index_t ;


 TYPE_1__* calloc (int,int) ;
 int memcpy (int ,int const*,int) ;

hb_preset_index_t* hb_preset_index_init(const int *index, int depth)
{
    hb_preset_index_t *path;
    path = calloc(1, sizeof(hb_preset_index_t));
    path->depth = depth;
    if (index != ((void*)0))
        memcpy(path->index, index, depth * sizeof(int));
    return path;
}
