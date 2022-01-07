
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_6__ {int (* h263_h_loop_filter ) (int *,int const,int const) ;int (* h263_v_loop_filter ) (int *,int const,int const) ;} ;
struct TYPE_5__ {int* qscale_table; int * mb_type; } ;
struct TYPE_7__ {int linesize; int uvlinesize; int mb_y; int mb_stride; int mb_x; int qscale; int* chroma_qscale_table; int mb_height; TYPE_2__ h263dsp; TYPE_1__ current_picture; int ** dest; } ;
typedef TYPE_3__ MpegEncContext ;


 scalar_t__ IS_SKIP (int ) ;
 int stub1 (int *,int const,int) ;
 int stub10 (int *,int const,int const) ;
 int stub11 (int *,int const,int) ;
 int stub12 (int *,int const,int) ;
 int stub13 (int *,int const,int) ;
 int stub14 (int *,int const,int) ;
 int stub15 (int *,int const,int const) ;
 int stub16 (int *,int const,int const) ;
 int stub2 (int *,int const,int) ;
 int stub3 (int *,int const,int) ;
 int stub4 (int *,int const,int) ;
 int stub5 (int *,int const,int const) ;
 int stub6 (int *,int const,int const) ;
 int stub7 (int *,int const,int) ;
 int stub8 (int *,int const,int) ;
 int stub9 (int *,int const,int const) ;

void ff_h263_loop_filter(MpegEncContext * s){
    int qp_c;
    const int linesize = s->linesize;
    const int uvlinesize= s->uvlinesize;
    const int xy = s->mb_y * s->mb_stride + s->mb_x;
    uint8_t *dest_y = s->dest[0];
    uint8_t *dest_cb= s->dest[1];
    uint8_t *dest_cr= s->dest[2];





    if (!IS_SKIP(s->current_picture.mb_type[xy])) {
        qp_c= s->qscale;
        s->h263dsp.h263_v_loop_filter(dest_y + 8 * linesize, linesize, qp_c);
        s->h263dsp.h263_v_loop_filter(dest_y + 8 * linesize + 8, linesize, qp_c);
    }else
        qp_c= 0;

    if(s->mb_y){
        int qp_dt, qp_tt, qp_tc;

        if (IS_SKIP(s->current_picture.mb_type[xy - s->mb_stride]))
            qp_tt=0;
        else
            qp_tt = s->current_picture.qscale_table[xy - s->mb_stride];

        if(qp_c)
            qp_tc= qp_c;
        else
            qp_tc= qp_tt;

        if(qp_tc){
            const int chroma_qp= s->chroma_qscale_table[qp_tc];
            s->h263dsp.h263_v_loop_filter(dest_y, linesize, qp_tc);
            s->h263dsp.h263_v_loop_filter(dest_y + 8, linesize, qp_tc);

            s->h263dsp.h263_v_loop_filter(dest_cb, uvlinesize, chroma_qp);
            s->h263dsp.h263_v_loop_filter(dest_cr, uvlinesize, chroma_qp);
        }

        if(qp_tt)
            s->h263dsp.h263_h_loop_filter(dest_y - 8 * linesize + 8, linesize, qp_tt);

        if(s->mb_x){
            if (qp_tt || IS_SKIP(s->current_picture.mb_type[xy - 1 - s->mb_stride]))
                qp_dt= qp_tt;
            else
                qp_dt = s->current_picture.qscale_table[xy - 1 - s->mb_stride];

            if(qp_dt){
                const int chroma_qp= s->chroma_qscale_table[qp_dt];
                s->h263dsp.h263_h_loop_filter(dest_y - 8 * linesize, linesize, qp_dt);
                s->h263dsp.h263_h_loop_filter(dest_cb - 8 * uvlinesize, uvlinesize, chroma_qp);
                s->h263dsp.h263_h_loop_filter(dest_cr - 8 * uvlinesize, uvlinesize, chroma_qp);
            }
        }
    }

    if(qp_c){
        s->h263dsp.h263_h_loop_filter(dest_y + 8, linesize, qp_c);
        if(s->mb_y + 1 == s->mb_height)
            s->h263dsp.h263_h_loop_filter(dest_y + 8 * linesize + 8, linesize, qp_c);
    }

    if(s->mb_x){
        int qp_lc;
        if (qp_c || IS_SKIP(s->current_picture.mb_type[xy - 1]))
            qp_lc= qp_c;
        else
            qp_lc = s->current_picture.qscale_table[xy - 1];

        if(qp_lc){
            s->h263dsp.h263_h_loop_filter(dest_y, linesize, qp_lc);
            if(s->mb_y + 1 == s->mb_height){
                const int chroma_qp= s->chroma_qscale_table[qp_lc];
                s->h263dsp.h263_h_loop_filter(dest_y + 8 * linesize, linesize, qp_lc);
                s->h263dsp.h263_h_loop_filter(dest_cb, uvlinesize, chroma_qp);
                s->h263dsp.h263_h_loop_filter(dest_cr, uvlinesize, chroma_qp);
            }
        }
    }
}
