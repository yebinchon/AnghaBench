#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct dshow_ctx {scalar_t__ video_codec_id; scalar_t__ pixel_format; int /*<<< orphan*/ * event; int /*<<< orphan*/ * media_event; int /*<<< orphan*/ * control; int /*<<< orphan*/  mutex; scalar_t__* curbufsize; scalar_t__ list_options; scalar_t__* device_name; scalar_t__ list_devices; int /*<<< orphan*/ * graph; scalar_t__ framerate; int /*<<< orphan*/  requested_framerate; } ;
struct TYPE_10__ {scalar_t__ video_codec_id; struct dshow_ctx* priv_data; } ;
typedef  int /*<<< orphan*/  OAFilterState ;
typedef  int /*<<< orphan*/  IMediaEvent ;
typedef  int /*<<< orphan*/  IMediaControl ;
typedef  int /*<<< orphan*/  IGraphBuilder ;
typedef  int /*<<< orphan*/  ICreateDevEnum ;
typedef  int /*<<< orphan*/  HANDLE ;
typedef  TYPE_1__ AVFormatContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_EXIT ; 
 scalar_t__ AV_CODEC_ID_RAWVIDEO ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_INFO ; 
 scalar_t__ AV_PIX_FMT_NONE ; 
 size_t AudioDevice ; 
 int /*<<< orphan*/  AudioSourceDevice ; 
 int /*<<< orphan*/  CLSCTX_INPROC_SERVER ; 
 int /*<<< orphan*/  CLSID_FilterGraph ; 
 int /*<<< orphan*/  CLSID_SystemDeviceEnum ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  DUPLICATE_SAME_ACCESS ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EIO ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void**) ; 
 int /*<<< orphan*/  IID_ICreateDevEnum ; 
 int /*<<< orphan*/  IID_IGraphBuilder ; 
 int /*<<< orphan*/  IID_IMediaControl ; 
 int /*<<< orphan*/  IID_IMediaEvent ; 
 int FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int FUNC11 (int /*<<< orphan*/ *,void*) ; 
 int S_FALSE ; 
 int S_OK ; 
 size_t VideoDevice ; 
 int /*<<< orphan*/  VideoSourceDevice ; 
 int /*<<< orphan*/  FUNC12 (TYPE_1__*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC13 (int /*<<< orphan*/ *,scalar_t__) ; 
 int FUNC14 (TYPE_1__*,size_t) ; 
 int /*<<< orphan*/  FUNC15 (TYPE_1__*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int FUNC16 (TYPE_1__*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int FUNC17 (TYPE_1__*,int /*<<< orphan*/ *,size_t,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC19 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC20(AVFormatContext *avctx)
{
    struct dshow_ctx *ctx = avctx->priv_data;
    IGraphBuilder *graph = NULL;
    ICreateDevEnum *devenum = NULL;
    IMediaControl *control = NULL;
    IMediaEvent *media_event = NULL;
    HANDLE media_event_handle;
    HANDLE proc;
    int ret = FUNC0(EIO);
    int r;

    FUNC2(0);

    if (!ctx->list_devices && !FUNC19(avctx)) {
        FUNC12(avctx, AV_LOG_ERROR, "Malformed dshow input string.\n");
        goto error;
    }

    ctx->video_codec_id = avctx->video_codec_id ? avctx->video_codec_id
                                                : AV_CODEC_ID_RAWVIDEO;
    if (ctx->pixel_format != AV_PIX_FMT_NONE) {
        if (ctx->video_codec_id != AV_CODEC_ID_RAWVIDEO) {
            FUNC12(avctx, AV_LOG_ERROR, "Pixel format may only be set when "
                              "video codec is not set or set to rawvideo\n");
            ret = FUNC0(EINVAL);
            goto error;
        }
    }
    if (ctx->framerate) {
        r = FUNC13(&ctx->requested_framerate, ctx->framerate);
        if (r < 0) {
            FUNC12(avctx, AV_LOG_ERROR, "Could not parse framerate '%s'.\n", ctx->framerate);
            goto error;
        }
    }

    r = FUNC1(&CLSID_FilterGraph, NULL, CLSCTX_INPROC_SERVER,
                         &IID_IGraphBuilder, (void **) &graph);
    if (r != S_OK) {
        FUNC12(avctx, AV_LOG_ERROR, "Could not create capture graph.\n");
        goto error;
    }
    ctx->graph = graph;

    r = FUNC1(&CLSID_SystemDeviceEnum, NULL, CLSCTX_INPROC_SERVER,
                         &IID_ICreateDevEnum, (void **) &devenum);
    if (r != S_OK) {
        FUNC12(avctx, AV_LOG_ERROR, "Could not enumerate system devices.\n");
        goto error;
    }

    if (ctx->list_devices) {
        FUNC12(avctx, AV_LOG_INFO, "DirectShow video devices (some may be both video and audio devices)\n");
        FUNC15(avctx, devenum, VideoDevice, VideoSourceDevice, NULL, NULL);
        FUNC12(avctx, AV_LOG_INFO, "DirectShow audio devices\n");
        FUNC15(avctx, devenum, AudioDevice, AudioSourceDevice, NULL, NULL);
        ret = AVERROR_EXIT;
        goto error;
    }
    if (ctx->list_options) {
        if (ctx->device_name[VideoDevice])
            if ((r = FUNC16(avctx, devenum, VideoDevice, VideoSourceDevice))) {
                ret = r;
                goto error;
            }
        if (ctx->device_name[AudioDevice]) {
            if (FUNC16(avctx, devenum, AudioDevice, AudioSourceDevice)) {
                /* show audio options from combined video+audio sources as fallback */
                if ((r = FUNC16(avctx, devenum, AudioDevice, VideoSourceDevice))) {
                    ret = r;
                    goto error;
                }
            }
        }
    }
    if (ctx->device_name[VideoDevice]) {
        if ((r = FUNC17(avctx, devenum, VideoDevice, VideoSourceDevice)) < 0 ||
            (r = FUNC14(avctx, VideoDevice)) < 0) {
            ret = r;
            goto error;
        }
    }
    if (ctx->device_name[AudioDevice]) {
        if ((r = FUNC17(avctx, devenum, AudioDevice, AudioSourceDevice)) < 0 ||
            (r = FUNC14(avctx, AudioDevice)) < 0) {
            FUNC12(avctx, AV_LOG_INFO, "Searching for audio device within video devices for %s\n", ctx->device_name[AudioDevice]);
            /* see if there's a video source with an audio pin with the given audio name */
            if ((r = FUNC17(avctx, devenum, AudioDevice, VideoSourceDevice)) < 0 ||
                (r = FUNC14(avctx, AudioDevice)) < 0) {
                ret = r;
                goto error;
            }
        }
    }
    if (ctx->list_options) {
        /* allow it to list crossbar options in dshow_open_device */
        ret = AVERROR_EXIT;
        goto error;
    }
    ctx->curbufsize[0] = 0;
    ctx->curbufsize[1] = 0;
    ctx->mutex = FUNC4(NULL, 0, NULL);
    if (!ctx->mutex) {
        FUNC12(avctx, AV_LOG_ERROR, "Could not create Mutex\n");
        goto error;
    }
    ctx->event[1] = FUNC3(NULL, 1, 0, NULL);
    if (!ctx->event[1]) {
        FUNC12(avctx, AV_LOG_ERROR, "Could not create Event\n");
        goto error;
    }

    r = FUNC8(graph, &IID_IMediaControl, (void **) &control);
    if (r != S_OK) {
        FUNC12(avctx, AV_LOG_ERROR, "Could not get media control.\n");
        goto error;
    }
    ctx->control = control;

    r = FUNC8(graph, &IID_IMediaEvent, (void **) &media_event);
    if (r != S_OK) {
        FUNC12(avctx, AV_LOG_ERROR, "Could not get media event.\n");
        goto error;
    }
    ctx->media_event = media_event;

    r = FUNC11(media_event, (void *) &media_event_handle);
    if (r != S_OK) {
        FUNC12(avctx, AV_LOG_ERROR, "Could not get media event handle.\n");
        goto error;
    }
    proc = FUNC6();
    r = FUNC5(proc, media_event_handle, proc, &ctx->event[0],
                        0, 0, DUPLICATE_SAME_ACCESS);
    if (!r) {
        FUNC12(avctx, AV_LOG_ERROR, "Could not duplicate media event handle.\n");
        goto error;
    }

    r = FUNC10(control);
    if (r == S_FALSE) {
        OAFilterState pfs;
        r = FUNC9(control, 0, &pfs);
    }
    if (r != S_OK) {
        FUNC12(avctx, AV_LOG_ERROR, "Could not run graph (sometimes caused by a device already in use by other application)\n");
        goto error;
    }

    ret = 0;

error:

    if (devenum)
        FUNC7(devenum);

    if (ret < 0)
        FUNC18(avctx);

    return ret;
}