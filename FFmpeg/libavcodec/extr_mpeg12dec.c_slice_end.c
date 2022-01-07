
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_18__ TYPE_8__ ;
typedef struct TYPE_17__ TYPE_5__ ;
typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_18__ {int f; } ;
struct TYPE_17__ {TYPE_1__* hwaccel; } ;
struct TYPE_16__ {int active_thread_type; TYPE_3__* priv_data; } ;
struct TYPE_14__ {scalar_t__ pict_type; TYPE_8__* last_picture_ptr; int picture_number; TYPE_8__* current_picture_ptr; scalar_t__ low_delay; int er; int first_field; TYPE_5__* avctx; } ;
struct TYPE_15__ {int first_slice; int mpeg_enc_ctx_allocated; TYPE_2__ mpeg_enc_ctx; } ;
struct TYPE_13__ {int (* end_frame ) (TYPE_5__*) ;} ;
typedef TYPE_2__ MpegEncContext ;
typedef TYPE_3__ Mpeg1Context ;
typedef int AVFrame ;
typedef TYPE_4__ AVCodecContext ;


 int AV_LOG_ERROR ;
 scalar_t__ AV_PICTURE_TYPE_B ;
 int FF_QSCALE_TYPE_MPEG2 ;
 int FF_THREAD_FRAME ;
 int av_frame_ref (int *,int ) ;
 int av_log (TYPE_4__*,int ,char*) ;
 int ff_er_frame_end (int *) ;
 int ff_mpv_export_qp_table (TYPE_2__*,int *,TYPE_8__*,int ) ;
 int ff_mpv_frame_end (TYPE_2__*) ;
 int ff_print_debug_info (TYPE_2__*,TYPE_8__*,int *) ;
 int stub1 (TYPE_5__*) ;

__attribute__((used)) static int slice_end(AVCodecContext *avctx, AVFrame *pict)
{
    Mpeg1Context *s1 = avctx->priv_data;
    MpegEncContext *s = &s1->mpeg_enc_ctx;

    if (!s1->mpeg_enc_ctx_allocated || !s->current_picture_ptr)
        return 0;

    if (s->avctx->hwaccel) {
        int ret = s->avctx->hwaccel->end_frame(s->avctx);
        if (ret < 0) {
            av_log(avctx, AV_LOG_ERROR,
                   "hardware accelerator failed to decode picture\n");
            return ret;
        }
    }


    if ( !s->first_field && !s1->first_slice) {


        ff_er_frame_end(&s->er);

        ff_mpv_frame_end(s);

        if (s->pict_type == AV_PICTURE_TYPE_B || s->low_delay) {
            int ret = av_frame_ref(pict, s->current_picture_ptr->f);
            if (ret < 0)
                return ret;
            ff_print_debug_info(s, s->current_picture_ptr, pict);
            ff_mpv_export_qp_table(s, pict, s->current_picture_ptr, FF_QSCALE_TYPE_MPEG2);
        } else {
            if (avctx->active_thread_type & FF_THREAD_FRAME)
                s->picture_number++;


            if (s->last_picture_ptr) {
                int ret = av_frame_ref(pict, s->last_picture_ptr->f);
                if (ret < 0)
                    return ret;
                ff_print_debug_info(s, s->last_picture_ptr, pict);
                ff_mpv_export_qp_table(s, pict, s->last_picture_ptr, FF_QSCALE_TYPE_MPEG2);
            }
        }

        return 1;
    } else {
        return 0;
    }
}
