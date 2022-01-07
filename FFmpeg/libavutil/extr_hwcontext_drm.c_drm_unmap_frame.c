
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_6__ {int nb_regions; int * length; int * address; } ;
struct TYPE_5__ {TYPE_2__* priv; } ;
typedef TYPE_1__ HWMapDescriptor ;
typedef TYPE_2__ DRMMapping ;
typedef int AVHWFramesContext ;


 int av_free (TYPE_2__*) ;
 int munmap (int ,int ) ;

__attribute__((used)) static void drm_unmap_frame(AVHWFramesContext *hwfc,
                            HWMapDescriptor *hwmap)
{
    DRMMapping *map = hwmap->priv;
    int i;

    for (i = 0; i < map->nb_regions; i++)
        munmap(map->address[i], map->length[i]);

    av_free(map);
}
