
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_23__ TYPE_9__ ;
typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_11__ ;
typedef struct TYPE_13__ TYPE_10__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_21__ {int vop_coding_type; int* trd; int* trb; int resync_marker_disable; int interlaced; int short_video_header; int * non_intra_quantizer_matrix; int * intra_quantizer_matrix; int top_field_first; int alternate_vertical_scan_flag; int rounding_control; int quarter_sample; int quant_type; int vop_fcode_backward; int vop_fcode_forward; int vop_time_increment_resolution; void* forward_reference; void* backward_reference; } ;
struct TYPE_15__ {TYPE_7__ mpeg4; } ;
struct vdpau_picture_context {TYPE_1__ info; } ;
typedef void* VdpVideoSurface ;
typedef TYPE_7__ VdpPictureInfoMPEG4Part2 ;
struct TYPE_17__ {int f; } ;
struct TYPE_16__ {int f; } ;
struct TYPE_23__ {int pict_type; int pp_time; int pb_time; int pp_field_time; int pb_field_time; int * inter_matrix; int * intra_matrix; int top_field_first; int alternate_scan; int no_rounding; int quarter_sample; int mpeg_quant; int progressive_sequence; int b_code; int f_code; TYPE_5__* avctx; TYPE_3__ last_picture; TYPE_2__ next_picture; TYPE_8__* current_picture_ptr; } ;
struct TYPE_22__ {struct vdpau_picture_context* hwaccel_picture_private; } ;
struct TYPE_20__ {scalar_t__ id; } ;
struct TYPE_18__ {int num; } ;
struct TYPE_19__ {TYPE_4__ framerate; } ;
struct TYPE_14__ {TYPE_6__* codec; TYPE_10__* priv_data; } ;
struct TYPE_13__ {int resync_marker; TYPE_9__ m; } ;
typedef TYPE_8__ Picture ;
typedef TYPE_9__ MpegEncContext ;
typedef TYPE_10__ Mpeg4DecContext ;
typedef TYPE_11__ AVCodecContext ;


 scalar_t__ AV_CODEC_ID_H263 ;


 void* VDP_INVALID_HANDLE ;
 int assert (int) ;
 int ff_vdpau_add_buffer (struct vdpau_picture_context*,int const*,int ) ;
 int ff_vdpau_common_start_frame (struct vdpau_picture_context*,int const*,int ) ;
 void* ff_vdpau_get_surface_id (int ) ;

__attribute__((used)) static int vdpau_mpeg4_start_frame(AVCodecContext *avctx,
                                   const uint8_t *buffer, uint32_t size)
{
    Mpeg4DecContext *ctx = avctx->priv_data;
    MpegEncContext * const s = &ctx->m;
    Picture *pic = s->current_picture_ptr;
    struct vdpau_picture_context *pic_ctx = pic->hwaccel_picture_private;
    VdpPictureInfoMPEG4Part2 *info = &pic_ctx->info.mpeg4;
    VdpVideoSurface ref;
    int i;


    info->forward_reference = VDP_INVALID_HANDLE;
    info->backward_reference = VDP_INVALID_HANDLE;
    info->vop_coding_type = 0;

    switch (s->pict_type) {
    case 129:
        ref = ff_vdpau_get_surface_id(s->next_picture.f);
        assert(ref != VDP_INVALID_HANDLE);
        info->backward_reference = ref;
        info->vop_coding_type = 2;

    case 128:
        ref = ff_vdpau_get_surface_id(s->last_picture.f);
        assert(ref != VDP_INVALID_HANDLE);
        info->forward_reference = ref;
    }

    info->trd[0] = s->pp_time;
    info->trb[0] = s->pb_time;
    info->trd[1] = s->pp_field_time >> 1;
    info->trb[1] = s->pb_field_time >> 1;
    info->vop_time_increment_resolution = s->avctx->framerate.num;
    info->vop_fcode_forward = s->f_code;
    info->vop_fcode_backward = s->b_code;
    info->resync_marker_disable = !ctx->resync_marker;
    info->interlaced = !s->progressive_sequence;
    info->quant_type = s->mpeg_quant;
    info->quarter_sample = s->quarter_sample;
    info->short_video_header = avctx->codec->id == AV_CODEC_ID_H263;
    info->rounding_control = s->no_rounding;
    info->alternate_vertical_scan_flag = s->alternate_scan;
    info->top_field_first = s->top_field_first;
    for (i = 0; i < 64; ++i) {
        info->intra_quantizer_matrix[i] = s->intra_matrix[i];
        info->non_intra_quantizer_matrix[i] = s->inter_matrix[i];
    }

    ff_vdpau_common_start_frame(pic_ctx, buffer, size);
    return ff_vdpau_add_buffer(pic_ctx, buffer, size);
}
