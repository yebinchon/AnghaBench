
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_17__ TYPE_8__ ;
typedef struct TYPE_16__ TYPE_7__ ;
typedef struct TYPE_15__ TYPE_6__ ;
typedef struct TYPE_14__ TYPE_5__ ;
typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
typedef int uint32_t ;
struct TYPE_13__ {int picture_type; int postprocflag; int rangered; int deblockEnable; int pquant; int maxbframes; int syncmarker; int multires; int range_mapuv; int range_mapuv_flag; int range_mapy; int range_mapy_flag; int fastuvmc; int loopfilter; int vstransform; int overlap; int extended_dmv; int extended_mv; int quantizer; int refdist_flag; int panscan_flag; int dquant; int psf; int finterpflag; int tfcntrflag; int interlace; int pulldown; scalar_t__ frame_coding_mode; scalar_t__ slice_count; void* forward_reference; void* backward_reference; } ;
struct TYPE_10__ {TYPE_4__ vc1; } ;
struct vdpau_picture_context {TYPE_1__ info; } ;
typedef void* VdpVideoSurface ;
typedef TYPE_4__ VdpPictureInfoVC1 ;
struct TYPE_12__ {int f; } ;
struct TYPE_11__ {int f; } ;
struct TYPE_16__ {int pict_type; int max_b_frames; int loop_filter; TYPE_3__ last_picture; int last_picture_ptr; TYPE_2__ next_picture; int next_picture_ptr; TYPE_6__* current_picture_ptr; } ;
struct TYPE_14__ {int postprocflag; int rangered; int rangeredfrm; int pq; TYPE_7__ s; int resync_marker; int multires; int range_mapuv; int range_mapuv_flag; int range_mapy; int range_mapy_flag; int fastuvmc; int vstransform; int overlap; int extended_dmv; int extended_mv; int quantizer_mode; int refdist_flag; int panscanflag; int dquant; int psf; int finterpflag; int tfcntrflag; int interlace; int broadcast; scalar_t__ fcm; scalar_t__ bi_type; } ;
typedef TYPE_5__ VC1Context ;
struct TYPE_17__ {TYPE_5__* priv_data; } ;
struct TYPE_15__ {struct vdpau_picture_context* hwaccel_picture_private; } ;
typedef TYPE_6__ Picture ;
typedef TYPE_7__ MpegEncContext ;
typedef TYPE_8__ AVCodecContext ;




 void* VDP_INVALID_HANDLE ;
 int assert (int) ;
 int ff_vdpau_common_start_frame (struct vdpau_picture_context*,int const*,int ) ;
 void* ff_vdpau_get_surface_id (int ) ;

__attribute__((used)) static int vdpau_vc1_start_frame(AVCodecContext *avctx,
                                 const uint8_t *buffer, uint32_t size)
{
    VC1Context * const v = avctx->priv_data;
    MpegEncContext * const s = &v->s;
    Picture *pic = s->current_picture_ptr;
    struct vdpau_picture_context *pic_ctx = pic->hwaccel_picture_private;
    VdpPictureInfoVC1 *info = &pic_ctx->info.vc1;
    VdpVideoSurface ref;


    info->forward_reference = VDP_INVALID_HANDLE;
    info->backward_reference = VDP_INVALID_HANDLE;

    switch (s->pict_type) {
    case 129:
        if (s->next_picture_ptr) {
        ref = ff_vdpau_get_surface_id(s->next_picture.f);
        assert(ref != VDP_INVALID_HANDLE);
        info->backward_reference = ref;
        }

    case 128:
        if (s->last_picture_ptr) {
        ref = ff_vdpau_get_surface_id(s->last_picture.f);
        assert(ref != VDP_INVALID_HANDLE);
        info->forward_reference = ref;
        }
    }

    info->slice_count = 0;
    if (v->bi_type)
        info->picture_type = 4;
    else
        info->picture_type = s->pict_type - 1 + s->pict_type / 3;

    info->frame_coding_mode = v->fcm ? (v->fcm + 1) : 0;
    info->postprocflag = v->postprocflag;
    info->pulldown = v->broadcast;
    info->interlace = v->interlace;
    info->tfcntrflag = v->tfcntrflag;
    info->finterpflag = v->finterpflag;
    info->psf = v->psf;
    info->dquant = v->dquant;
    info->panscan_flag = v->panscanflag;
    info->refdist_flag = v->refdist_flag;
    info->quantizer = v->quantizer_mode;
    info->extended_mv = v->extended_mv;
    info->extended_dmv = v->extended_dmv;
    info->overlap = v->overlap;
    info->vstransform = v->vstransform;
    info->loopfilter = v->s.loop_filter;
    info->fastuvmc = v->fastuvmc;
    info->range_mapy_flag = v->range_mapy_flag;
    info->range_mapy = v->range_mapy;
    info->range_mapuv_flag = v->range_mapuv_flag;
    info->range_mapuv = v->range_mapuv;

    info->multires = v->multires;
    info->syncmarker = v->resync_marker;
    info->rangered = v->rangered | (v->rangeredfrm << 1);
    info->maxbframes = v->s.max_b_frames;
    info->deblockEnable = v->postprocflag & 1;
    info->pquant = v->pq;

    return ff_vdpau_common_start_frame(pic_ctx, buffer, size);
}
