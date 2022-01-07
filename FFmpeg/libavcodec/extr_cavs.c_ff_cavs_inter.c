
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef enum cavs_mb { ____Placeholder_cavs_mb } cavs_mb ;
struct TYPE_7__ {int * avg_h264_chroma_pixels_tab; int * put_h264_chroma_pixels_tab; } ;
struct TYPE_6__ {int * avg_cavs_qpel_pixels_tab; int * put_cavs_qpel_pixels_tab; } ;
struct TYPE_8__ {int * mv; TYPE_2__ h264chroma; TYPE_1__ cdsp; int cv; int cu; int cy; } ;
typedef TYPE_3__ AVSContext ;


 size_t MV_FWD_X0 ;
 size_t MV_FWD_X1 ;
 size_t MV_FWD_X2 ;
 size_t MV_FWD_X3 ;
 scalar_t__* ff_cavs_partition_flags ;
 int mc_part_std (TYPE_3__*,int,int ,int ,int ,int ,int,int,int ,int ,int ,int ,int *) ;

void ff_cavs_inter(AVSContext *h, enum cavs_mb mb_type)
{
    if (ff_cavs_partition_flags[mb_type] == 0) {
        mc_part_std(h, 8, 0, h->cy, h->cu, h->cv, 0, 0,
                    h->cdsp.put_cavs_qpel_pixels_tab[0],
                    h->h264chroma.put_h264_chroma_pixels_tab[0],
                    h->cdsp.avg_cavs_qpel_pixels_tab[0],
                    h->h264chroma.avg_h264_chroma_pixels_tab[0],
                    &h->mv[MV_FWD_X0]);
    } else {
        mc_part_std(h, 4, 0, h->cy, h->cu, h->cv, 0, 0,
                    h->cdsp.put_cavs_qpel_pixels_tab[1],
                    h->h264chroma.put_h264_chroma_pixels_tab[1],
                    h->cdsp.avg_cavs_qpel_pixels_tab[1],
                    h->h264chroma.avg_h264_chroma_pixels_tab[1],
                    &h->mv[MV_FWD_X0]);
        mc_part_std(h, 4, 0, h->cy, h->cu, h->cv, 4, 0,
                    h->cdsp.put_cavs_qpel_pixels_tab[1],
                    h->h264chroma.put_h264_chroma_pixels_tab[1],
                    h->cdsp.avg_cavs_qpel_pixels_tab[1],
                    h->h264chroma.avg_h264_chroma_pixels_tab[1],
                    &h->mv[MV_FWD_X1]);
        mc_part_std(h, 4, 0, h->cy, h->cu, h->cv, 0, 4,
                    h->cdsp.put_cavs_qpel_pixels_tab[1],
                    h->h264chroma.put_h264_chroma_pixels_tab[1],
                    h->cdsp.avg_cavs_qpel_pixels_tab[1],
                    h->h264chroma.avg_h264_chroma_pixels_tab[1],
                    &h->mv[MV_FWD_X2]);
        mc_part_std(h, 4, 0, h->cy, h->cu, h->cv, 4, 4,
                    h->cdsp.put_cavs_qpel_pixels_tab[1],
                    h->h264chroma.put_h264_chroma_pixels_tab[1],
                    h->cdsp.avg_cavs_qpel_pixels_tab[1],
                    h->h264chroma.avg_h264_chroma_pixels_tab[1],
                    &h->mv[MV_FWD_X3]);
    }
}
