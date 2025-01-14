
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_3__ ;
typedef struct TYPE_9__ TYPE_2__ ;
typedef struct TYPE_8__ TYPE_1__ ;


typedef int uint8_t ;
typedef int qpel_mc_func ;
typedef int h264_chroma_mc_func ;
struct TYPE_9__ {size_t ref; } ;
typedef TYPE_2__ cavs_vector ;
struct TYPE_10__ {int l_stride; int c_stride; int mbx; int mby; TYPE_1__* DPB; } ;
struct TYPE_8__ {int * f; } ;
typedef TYPE_3__ AVSContext ;
typedef int AVFrame ;


 int MV_BWD_OFFS ;
 int mc_dir_part (TYPE_3__*,int *,int,int,int,int *,int *,int *,int,int,int *,int ,TYPE_2__*) ;

__attribute__((used)) static inline void mc_part_std(AVSContext *h, int chroma_height, int delta,
                               uint8_t *dest_y,
                               uint8_t *dest_cb,
                               uint8_t *dest_cr,
                               int x_offset, int y_offset,
                               qpel_mc_func *qpix_put,
                               h264_chroma_mc_func chroma_put,
                               qpel_mc_func *qpix_avg,
                               h264_chroma_mc_func chroma_avg,
                               cavs_vector *mv)
{
    qpel_mc_func *qpix_op = qpix_put;
    h264_chroma_mc_func chroma_op = chroma_put;

    dest_y += x_offset * 2 + y_offset * h->l_stride * 2;
    dest_cb += x_offset + y_offset * h->c_stride;
    dest_cr += x_offset + y_offset * h->c_stride;
    x_offset += 8 * h->mbx;
    y_offset += 8 * h->mby;

    if (mv->ref >= 0) {
        AVFrame *ref = h->DPB[mv->ref].f;
        mc_dir_part(h, ref, chroma_height, delta, 0,
                    dest_y, dest_cb, dest_cr, x_offset, y_offset,
                    qpix_op, chroma_op, mv);

        qpix_op = qpix_avg;
        chroma_op = chroma_avg;
    }

    if ((mv + MV_BWD_OFFS)->ref >= 0) {
        AVFrame *ref = h->DPB[0].f;
        mc_dir_part(h, ref, chroma_height, delta, 1,
                    dest_y, dest_cb, dest_cr, x_offset, y_offset,
                    qpix_op, chroma_op, mv + MV_BWD_OFFS);
    }
}
