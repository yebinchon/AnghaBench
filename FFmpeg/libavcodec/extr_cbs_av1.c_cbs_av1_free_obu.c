
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_11__ {int tile_data; } ;
struct TYPE_9__ {int tile_data; } ;
struct TYPE_10__ {TYPE_1__ tile_group; } ;
struct TYPE_13__ {int tile_data; } ;
struct TYPE_14__ {int padding; int metadata; TYPE_3__ tile_list; TYPE_2__ frame; TYPE_5__ tile_group; } ;
struct TYPE_12__ {int obu_type; } ;
struct TYPE_15__ {TYPE_6__ obu; TYPE_4__ header; } ;
typedef TYPE_7__ AV1RawOBU ;







 int av_freep (TYPE_7__**) ;
 int cbs_av1_free_metadata (int *) ;
 int cbs_av1_free_padding (int *) ;
 int cbs_av1_free_tile_data (int *) ;

__attribute__((used)) static void cbs_av1_free_obu(void *opaque, uint8_t *content)
{
    AV1RawOBU *obu = (AV1RawOBU*)content;

    switch (obu->header.obu_type) {
    case 129:
        cbs_av1_free_tile_data(&obu->obu.tile_group.tile_data);
        break;
    case 132:
        cbs_av1_free_tile_data(&obu->obu.frame.tile_group.tile_data);
        break;
    case 128:
        cbs_av1_free_tile_data(&obu->obu.tile_list.tile_data);
        break;
    case 131:
        cbs_av1_free_metadata(&obu->obu.metadata);
        break;
    case 130:
        cbs_av1_free_padding(&obu->obu.padding);
        break;
    }

    av_freep(&obu);
}
