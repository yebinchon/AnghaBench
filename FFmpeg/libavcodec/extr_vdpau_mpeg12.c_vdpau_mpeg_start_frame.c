
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
typedef int uint32_t ;
struct TYPE_12__ {int picture_coding_type; int * non_intra_quantizer_matrix; int * intra_quantizer_matrix; int ** f_code; int full_pel_backward_vector; int full_pel_forward_vector; int top_field_first; int q_scale_type; int alternate_scan; int intra_vlc_format; int concealment_motion_vectors; int frame_pred_frame_dct; int intra_dc_precision; int picture_structure; scalar_t__ slice_count; void* forward_reference; void* backward_reference; } ;
struct TYPE_9__ {TYPE_4__ mpeg; } ;
struct vdpau_picture_context {TYPE_1__ info; } ;
typedef void* VdpVideoSurface ;
typedef TYPE_4__ VdpPictureInfoMPEG1Or2 ;
struct TYPE_15__ {TYPE_6__* priv_data; } ;
struct TYPE_11__ {int f; } ;
struct TYPE_10__ {int f; } ;
struct TYPE_14__ {int pict_type; int * inter_matrix; int * intra_matrix; int ** mpeg_f_code; int * full_pel; int top_field_first; int q_scale_type; int alternate_scan; int intra_vlc_format; int concealment_motion_vectors; int frame_pred_frame_dct; int intra_dc_precision; int picture_structure; TYPE_3__ last_picture; TYPE_2__ next_picture; TYPE_5__* current_picture_ptr; } ;
struct TYPE_13__ {struct vdpau_picture_context* hwaccel_picture_private; } ;
typedef TYPE_5__ Picture ;
typedef TYPE_6__ MpegEncContext ;
typedef TYPE_7__ AVCodecContext ;




 void* VDP_INVALID_HANDLE ;
 int assert (int) ;
 int ff_vdpau_common_start_frame (struct vdpau_picture_context*,int const*,int ) ;
 void* ff_vdpau_get_surface_id (int ) ;

__attribute__((used)) static int vdpau_mpeg_start_frame(AVCodecContext *avctx,
                                  const uint8_t *buffer, uint32_t size)
{
    MpegEncContext * const s = avctx->priv_data;
    Picture *pic = s->current_picture_ptr;
    struct vdpau_picture_context *pic_ctx = pic->hwaccel_picture_private;
    VdpPictureInfoMPEG1Or2 *info = &pic_ctx->info.mpeg;
    VdpVideoSurface ref;
    int i;


    info->forward_reference = VDP_INVALID_HANDLE;
    info->backward_reference = VDP_INVALID_HANDLE;

    switch (s->pict_type) {
    case 129:
        ref = ff_vdpau_get_surface_id(s->next_picture.f);
        assert(ref != VDP_INVALID_HANDLE);
        info->backward_reference = ref;

    case 128:
        ref = ff_vdpau_get_surface_id(s->last_picture.f);
        info->forward_reference = ref;
    }

    info->slice_count = 0;
    info->picture_structure = s->picture_structure;
    info->picture_coding_type = s->pict_type;
    info->intra_dc_precision = s->intra_dc_precision;
    info->frame_pred_frame_dct = s->frame_pred_frame_dct;
    info->concealment_motion_vectors = s->concealment_motion_vectors;
    info->intra_vlc_format = s->intra_vlc_format;
    info->alternate_scan = s->alternate_scan;
    info->q_scale_type = s->q_scale_type;
    info->top_field_first = s->top_field_first;

    info->full_pel_forward_vector = s->full_pel[0];
    info->full_pel_backward_vector = s->full_pel[1];

    info->f_code[0][0] = s->mpeg_f_code[0][0];
    info->f_code[0][1] = s->mpeg_f_code[0][1];
    info->f_code[1][0] = s->mpeg_f_code[1][0];
    info->f_code[1][1] = s->mpeg_f_code[1][1];
    for (i = 0; i < 64; ++i) {
        info->intra_quantizer_matrix[i] = s->intra_matrix[i];
        info->non_intra_quantizer_matrix[i] = s->inter_matrix[i];
    }

    return ff_vdpau_common_start_frame(pic_ctx, buffer, size);
}
