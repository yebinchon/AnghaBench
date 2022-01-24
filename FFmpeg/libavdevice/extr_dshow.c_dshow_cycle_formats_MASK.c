#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_33__   TYPE_9__ ;
typedef  struct TYPE_32__   TYPE_8__ ;
typedef  struct TYPE_31__   TYPE_7__ ;
typedef  struct TYPE_30__   TYPE_6__ ;
typedef  struct TYPE_29__   TYPE_5__ ;
typedef  struct TYPE_28__   TYPE_4__ ;
typedef  struct TYPE_27__   TYPE_3__ ;
typedef  struct TYPE_26__   TYPE_2__ ;
typedef  struct TYPE_25__   TYPE_1__ ;
typedef  struct TYPE_24__   TYPE_12__ ;
typedef  struct TYPE_23__   TYPE_11__ ;
typedef  struct TYPE_22__   TYPE_10__ ;

/* Type definitions */
struct TYPE_25__ {int num; scalar_t__ den; } ;
struct dshow_ctx {scalar_t__ video_codec_id; int pixel_format; int requested_width; scalar_t__ requested_height; int sample_rate; scalar_t__ sample_size; int channels; TYPE_1__ requested_framerate; scalar_t__ framerate; } ;
typedef  int int64_t ;
typedef  enum dshowDeviceType { ____Placeholder_dshowDeviceType } dshowDeviceType ;
typedef  enum AVPixelFormat { ____Placeholder_AVPixelFormat } AVPixelFormat ;
typedef  enum AVCodecID { ____Placeholder_AVCodecID } AVCodecID ;
struct TYPE_28__ {int nSamplesPerSec; scalar_t__ wBitsPerSample; int nChannels; } ;
typedef  TYPE_4__ WAVEFORMATEX ;
struct TYPE_27__ {int cx; scalar_t__ cy; } ;
struct TYPE_26__ {int cx; scalar_t__ cy; } ;
struct TYPE_29__ {int MaxFrameInterval; int MinFrameInterval; TYPE_3__ MinOutputSize; TYPE_2__ MaxOutputSize; } ;
typedef  TYPE_5__ VIDEO_STREAM_CONFIG_CAPS ;
struct TYPE_32__ {int biWidth; scalar_t__ biHeight; int /*<<< orphan*/  biBitCount; scalar_t__ biCompression; } ;
struct TYPE_30__ {int AvgTimePerFrame; TYPE_8__ bmiHeader; } ;
typedef  TYPE_6__ VIDEOINFOHEADER2 ;
struct TYPE_31__ {int AvgTimePerFrame; TYPE_8__ bmiHeader; } ;
typedef  TYPE_7__ VIDEOINFOHEADER ;
struct TYPE_33__ {struct dshow_ctx* priv_data; } ;
struct TYPE_24__ {struct TYPE_24__* pbFormat; int /*<<< orphan*/  formattype; } ;
struct TYPE_23__ {int MinimumChannels; scalar_t__ MinimumBitsPerSample; int MinimumSampleFrequency; int MaximumChannels; scalar_t__ MaximumBitsPerSample; int MaximumSampleFrequency; } ;
struct TYPE_22__ {int /*<<< orphan*/  name; } ;
typedef  int /*<<< orphan*/  IPin ;
typedef  int /*<<< orphan*/  IAMStreamConfig ;
typedef  TYPE_8__ BITMAPINFOHEADER ;
typedef  TYPE_9__ AVFormatContext ;
typedef  int /*<<< orphan*/  AVCodecTag ;
typedef  TYPE_10__ AVCodec ;
typedef  TYPE_11__ AUDIO_STREAM_CONFIG_CAPS ;
typedef  TYPE_12__ AM_MEDIA_TYPE ;

/* Variables and functions */
 int AV_CODEC_ID_NONE ; 
 scalar_t__ AV_CODEC_ID_RAWVIDEO ; 
 int /*<<< orphan*/  AV_LOG_INFO ; 
 int AV_PIX_FMT_NONE ; 
 int /*<<< orphan*/  FUNC0 (TYPE_12__*) ; 
 int /*<<< orphan*/  FORMAT_VideoInfo ; 
 int /*<<< orphan*/  FORMAT_VideoInfo2 ; 
 int /*<<< orphan*/  FORMAT_WaveFormatEx ; 
 int FUNC1 (int /*<<< orphan*/ *,int*,int*) ; 
 int FUNC2 (int /*<<< orphan*/ *,int,TYPE_12__**,void*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,TYPE_12__*) ; 
 int /*<<< orphan*/  IID_IAMStreamConfig ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int S_OK ; 
 int VideoDevice ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/  const* const*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC8 (void*) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_9__*,int /*<<< orphan*/ ,char*,int,...) ; 
 void* FUNC11 (int) ; 
 TYPE_10__* FUNC12 (int) ; 
 int /*<<< orphan*/  const* FUNC13 () ; 
 scalar_t__ FUNC14 (scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_12__*) ; 
 int /*<<< orphan*/  FUNC16 (TYPE_11__*) ; 
 int /*<<< orphan*/  FUNC17 (TYPE_5__*) ; 

__attribute__((used)) static void
FUNC18(AVFormatContext *avctx, enum dshowDeviceType devtype,
                    IPin *pin, int *pformat_set)
{
    struct dshow_ctx *ctx = avctx->priv_data;
    IAMStreamConfig *config = NULL;
    AM_MEDIA_TYPE *type = NULL;
    int format_set = 0;
    void *caps = NULL;
    int i, n, size, r;

    if (FUNC5(pin, &IID_IAMStreamConfig, (void **) &config) != S_OK)
        return;
    if (FUNC1(config, &n, &size) != S_OK)
        goto end;

    caps = FUNC11(size);
    if (!caps)
        goto end;

    for (i = 0; i < n && !format_set; i++) {
        r = FUNC2(config, i, &type, (void *) caps);
        if (r != S_OK)
            goto next;
#if DSHOWDEBUG
        ff_print_AM_MEDIA_TYPE(type);
#endif

        if (devtype == VideoDevice) {
            VIDEO_STREAM_CONFIG_CAPS *vcaps = caps;
            BITMAPINFOHEADER *bih;
            int64_t *fr;
            const AVCodecTag *const tags[] = { FUNC13(), NULL };
#if DSHOWDEBUG
            ff_print_VIDEO_STREAM_CONFIG_CAPS(vcaps);
#endif
            if (FUNC6(&type->formattype, &FORMAT_VideoInfo)) {
                VIDEOINFOHEADER *v = (void *) type->pbFormat;
                fr = &v->AvgTimePerFrame;
                bih = &v->bmiHeader;
            } else if (FUNC6(&type->formattype, &FORMAT_VideoInfo2)) {
                VIDEOINFOHEADER2 *v = (void *) type->pbFormat;
                fr = &v->AvgTimePerFrame;
                bih = &v->bmiHeader;
            } else {
                goto next;
            }
            if (!pformat_set) {
                enum AVPixelFormat pix_fmt = FUNC14(bih->biCompression, bih->biBitCount);
                if (pix_fmt == AV_PIX_FMT_NONE) {
                    enum AVCodecID codec_id = FUNC7(tags, bih->biCompression);
                    AVCodec *codec = FUNC12(codec_id);
                    if (codec_id == AV_CODEC_ID_NONE || !codec) {
                        FUNC10(avctx, AV_LOG_INFO, "  unknown compression type 0x%X", (int) bih->biCompression);
                    } else {
                        FUNC10(avctx, AV_LOG_INFO, "  vcodec=%s", codec->name);
                    }
                } else {
                    FUNC10(avctx, AV_LOG_INFO, "  pixel_format=%s", FUNC9(pix_fmt));
                }
                FUNC10(avctx, AV_LOG_INFO, "  min s=%ldx%ld fps=%g max s=%ldx%ld fps=%g\n",
                       vcaps->MinOutputSize.cx, vcaps->MinOutputSize.cy,
                       1e7 / vcaps->MaxFrameInterval,
                       vcaps->MaxOutputSize.cx, vcaps->MaxOutputSize.cy,
                       1e7 / vcaps->MinFrameInterval);
                continue;
            }
            if (ctx->video_codec_id != AV_CODEC_ID_RAWVIDEO) {
                if (ctx->video_codec_id != FUNC7(tags, bih->biCompression))
                    goto next;
            }
            if (ctx->pixel_format != AV_PIX_FMT_NONE &&
                ctx->pixel_format != FUNC14(bih->biCompression, bih->biBitCount)) {
                goto next;
            }
            if (ctx->framerate) {
                int64_t framerate = ((int64_t) ctx->requested_framerate.den*10000000)
                                            /  ctx->requested_framerate.num;
                if (framerate > vcaps->MaxFrameInterval ||
                    framerate < vcaps->MinFrameInterval)
                    goto next;
                *fr = framerate;
            }
            if (ctx->requested_width && ctx->requested_height) {
                if (ctx->requested_width  > vcaps->MaxOutputSize.cx ||
                    ctx->requested_width  < vcaps->MinOutputSize.cx ||
                    ctx->requested_height > vcaps->MaxOutputSize.cy ||
                    ctx->requested_height < vcaps->MinOutputSize.cy)
                    goto next;
                bih->biWidth  = ctx->requested_width;
                bih->biHeight = ctx->requested_height;
            }
        } else {
            AUDIO_STREAM_CONFIG_CAPS *acaps = caps;
            WAVEFORMATEX *fx;
#if DSHOWDEBUG
            ff_print_AUDIO_STREAM_CONFIG_CAPS(acaps);
#endif
            if (FUNC6(&type->formattype, &FORMAT_WaveFormatEx)) {
                fx = (void *) type->pbFormat;
            } else {
                goto next;
            }
            if (!pformat_set) {
                FUNC10(avctx, AV_LOG_INFO, "  min ch=%lu bits=%lu rate=%6lu max ch=%lu bits=%lu rate=%6lu\n",
                       acaps->MinimumChannels, acaps->MinimumBitsPerSample, acaps->MinimumSampleFrequency,
                       acaps->MaximumChannels, acaps->MaximumBitsPerSample, acaps->MaximumSampleFrequency);
                continue;
            }
            if (ctx->sample_rate) {
                if (ctx->sample_rate > acaps->MaximumSampleFrequency ||
                    ctx->sample_rate < acaps->MinimumSampleFrequency)
                    goto next;
                fx->nSamplesPerSec = ctx->sample_rate;
            }
            if (ctx->sample_size) {
                if (ctx->sample_size > acaps->MaximumBitsPerSample ||
                    ctx->sample_size < acaps->MinimumBitsPerSample)
                    goto next;
                fx->wBitsPerSample = ctx->sample_size;
            }
            if (ctx->channels) {
                if (ctx->channels > acaps->MaximumChannels ||
                    ctx->channels < acaps->MinimumChannels)
                    goto next;
                fx->nChannels = ctx->channels;
            }
        }
        if (FUNC4(config, type) != S_OK)
            goto next;
        format_set = 1;
next:
        if (type->pbFormat)
            FUNC0(type->pbFormat);
        FUNC0(type);
    }
end:
    FUNC3(config);
    FUNC8(caps);
    if (pformat_set)
        *pformat_set = format_set;
}