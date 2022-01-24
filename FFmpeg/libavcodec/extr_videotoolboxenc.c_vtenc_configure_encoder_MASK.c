#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;
typedef  struct TYPE_14__   TYPE_12__ ;

/* Type definitions */
struct TYPE_15__ {scalar_t__ codec_id; int has_b_frames; scalar_t__ profile; scalar_t__ entropy; int dts_delta; int /*<<< orphan*/  session; int /*<<< orphan*/  color_primaries; int /*<<< orphan*/  ycbcr_matrix; int /*<<< orphan*/  transfer_function; int /*<<< orphan*/  allow_sw; scalar_t__ require_sw; int /*<<< orphan*/  get_param_set_func; } ;
typedef  TYPE_1__ VTEncContext ;
struct TYPE_16__ {scalar_t__ codec_id; scalar_t__ max_b_frames; scalar_t__ pix_fmt; int flags; TYPE_1__* priv_data; } ;
struct TYPE_14__ {int /*<<< orphan*/  kVTVideoEncoderSpecification_EnableHardwareAcceleratedVideoEncoder; int /*<<< orphan*/  kVTVideoEncoderSpecification_RequireHardwareAcceleratedVideoEncoder; int /*<<< orphan*/  CMVideoFormatDescriptionGetHEVCParameterSetAtIndex; } ;
typedef  int /*<<< orphan*/  CMVideoCodecType ;
typedef  int /*<<< orphan*/  CFStringRef ;
typedef  int /*<<< orphan*/ * CFNumberRef ;
typedef  int /*<<< orphan*/ * CFMutableDictionaryRef ;
typedef  TYPE_2__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AV_CODEC_FLAG_GLOBAL_HEADER ; 
 scalar_t__ AV_CODEC_ID_H264 ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 scalar_t__ AV_PIX_FMT_VIDEOTOOLBOX ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CMVideoFormatDescriptionGetH264ParameterSetAtIndex ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ H264_PROF_BASELINE ; 
 scalar_t__ VT_CABAC ; 
 scalar_t__ VT_ENTROPY_NOT_SET ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,char*,...) ; 
 TYPE_12__ compat_keys ; 
 int FUNC5 (TYPE_2__*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_2__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  kCFAllocatorDefault ; 
 int /*<<< orphan*/  kCFBooleanFalse ; 
 int /*<<< orphan*/  kCFBooleanTrue ; 
 int /*<<< orphan*/  kCFCopyStringDictionaryKeyCallBacks ; 
 int /*<<< orphan*/  kCFTypeDictionaryValueCallBacks ; 
 int FUNC12 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC13 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC14(AVCodecContext *avctx)
{
    CFMutableDictionaryRef enc_info;
    CFMutableDictionaryRef pixel_buffer_info;
    CMVideoCodecType       codec_type;
    VTEncContext           *vtctx = avctx->priv_data;
    CFStringRef            profile_level;
    CFNumberRef            gamma_level = NULL;
    int                    status;

    codec_type = FUNC6(avctx->codec_id);
    if (!codec_type) {
        FUNC4(avctx, AV_LOG_ERROR, "Error: no mapping for AVCodecID %d\n", avctx->codec_id);
        return FUNC0(EINVAL);
    }

    vtctx->codec_id = avctx->codec_id;

    if (vtctx->codec_id == AV_CODEC_ID_H264) {
        vtctx->get_param_set_func = CMVideoFormatDescriptionGetH264ParameterSetAtIndex;

        vtctx->has_b_frames = avctx->max_b_frames > 0;
        if(vtctx->has_b_frames && vtctx->profile == H264_PROF_BASELINE){
            FUNC4(avctx, AV_LOG_WARNING, "Cannot use B-frames with baseline profile. Output will not contain B-frames.\n");
            vtctx->has_b_frames = false;
        }

        if (vtctx->entropy == VT_CABAC && vtctx->profile == H264_PROF_BASELINE) {
            FUNC4(avctx, AV_LOG_WARNING, "CABAC entropy requires 'main' or 'high' profile, but baseline was requested. Encode will not use CABAC entropy.\n");
            vtctx->entropy = VT_ENTROPY_NOT_SET;
        }

        if (!FUNC10(avctx, &profile_level)) return FUNC0(EINVAL);
    } else {
        vtctx->get_param_set_func = compat_keys.CMVideoFormatDescriptionGetHEVCParameterSetAtIndex;
        if (!vtctx->get_param_set_func) return FUNC0(EINVAL);
        if (!FUNC11(avctx, &profile_level)) return FUNC0(EINVAL);
    }

    enc_info = FUNC1(
        kCFAllocatorDefault,
        20,
        &kCFCopyStringDictionaryKeyCallBacks,
        &kCFTypeDictionaryValueCallBacks
    );

    if (!enc_info) return FUNC0(ENOMEM);

#if !TARGET_OS_IPHONE
    if(vtctx->require_sw) {
        FUNC2(enc_info,
                             compat_keys.kVTVideoEncoderSpecification_EnableHardwareAcceleratedVideoEncoder,
                             kCFBooleanFalse);
    } else if (!vtctx->allow_sw) {
        FUNC2(enc_info,
                             compat_keys.kVTVideoEncoderSpecification_RequireHardwareAcceleratedVideoEncoder,
                             kCFBooleanTrue);
    } else {
        FUNC2(enc_info,
                             compat_keys.kVTVideoEncoderSpecification_EnableHardwareAcceleratedVideoEncoder,
                             kCFBooleanTrue);
    }
#endif

    if (avctx->pix_fmt != AV_PIX_FMT_VIDEOTOOLBOX) {
        status = FUNC5(avctx, &pixel_buffer_info);
        if (status)
            goto init_cleanup;
    } else {
        pixel_buffer_info = NULL;
    }

    vtctx->dts_delta = vtctx->has_b_frames ? -1 : 0;

    FUNC8(avctx, &vtctx->transfer_function, &gamma_level);
    FUNC9(avctx, &vtctx->ycbcr_matrix);
    FUNC7(avctx, &vtctx->color_primaries);


    if (avctx->flags & AV_CODEC_FLAG_GLOBAL_HEADER) {
        status = FUNC13(avctx,
                                          codec_type,
                                          profile_level,
                                          gamma_level,
                                          enc_info,
                                          pixel_buffer_info);
        if (status)
            goto init_cleanup;
    }

    status = FUNC12(avctx,
                                  codec_type,
                                  profile_level,
                                  gamma_level,
                                  enc_info,
                                  pixel_buffer_info,
                                  &vtctx->session);

init_cleanup:
    if (gamma_level)
        FUNC3(gamma_level);

    if (pixel_buffer_info)
        FUNC3(pixel_buffer_info);

    FUNC3(enc_info);

    return status;
}