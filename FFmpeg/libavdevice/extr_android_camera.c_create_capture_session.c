
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_5__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef scalar_t__ camera_status_t ;
struct TYPE_8__ {int onActive; int onReady; int onClosed; TYPE_2__* context; } ;
struct TYPE_7__ {TYPE_1__* priv_data; } ;
struct TYPE_6__ {int capture_request; int capture_session; TYPE_5__ capture_session_state_callbacks; int capture_session_output_container; int camera_dev; int camera_output_target; int framerate_range; int image_reader_window; int capture_session_output; } ;
typedef TYPE_1__ AndroidCameraCtx ;
typedef TYPE_2__ AVFormatContext ;


 int ACAMERA_CONTROL_AE_TARGET_FPS_RANGE ;
 scalar_t__ ACAMERA_OK ;
 scalar_t__ ACameraCaptureSession_setRepeatingRequest (int ,int *,int,int *,int *) ;
 scalar_t__ ACameraDevice_createCaptureRequest (int ,int ,int *) ;
 scalar_t__ ACameraDevice_createCaptureSession (int ,int ,TYPE_5__*,int *) ;
 scalar_t__ ACameraOutputTarget_create (int ,int *) ;
 scalar_t__ ACaptureRequest_addTarget (int ,int ) ;
 scalar_t__ ACaptureRequest_setEntry_i32 (int ,int ,int,int ) ;
 scalar_t__ ACaptureSessionOutputContainer_add (int ,int ) ;
 scalar_t__ ACaptureSessionOutputContainer_create (int *) ;
 scalar_t__ ACaptureSessionOutput_create (int ,int *) ;
 int ANativeWindow_acquire (int ) ;
 int AVERROR_EXTERNAL ;
 int AV_LOG_ERROR ;
 int TEMPLATE_RECORD ;
 int av_log (TYPE_2__*,int ,char*,int ) ;
 int camera_status_string (scalar_t__) ;
 int capture_session_active ;
 int capture_session_closed ;
 int capture_session_ready ;

__attribute__((used)) static int create_capture_session(AVFormatContext *avctx)
{
    AndroidCameraCtx *ctx = avctx->priv_data;
    camera_status_t ret;

    ret = ACaptureSessionOutputContainer_create(&ctx->capture_session_output_container);
    if (ret != ACAMERA_OK) {
        av_log(avctx, AV_LOG_ERROR,
               "Failed to create capture session output container, error: %s.\n",
               camera_status_string(ret));
        return AVERROR_EXTERNAL;
    }

    ANativeWindow_acquire(ctx->image_reader_window);

    ret = ACaptureSessionOutput_create(ctx->image_reader_window, &ctx->capture_session_output);
    if (ret != ACAMERA_OK) {
        av_log(avctx, AV_LOG_ERROR,
               "Failed to create capture session container, error: %s.\n",
               camera_status_string(ret));
        return AVERROR_EXTERNAL;
    }

    ret = ACaptureSessionOutputContainer_add(ctx->capture_session_output_container,
                                             ctx->capture_session_output);
    if (ret != ACAMERA_OK) {
        av_log(avctx, AV_LOG_ERROR,
               "Failed to add output to output container, error: %s.\n",
               camera_status_string(ret));
        return AVERROR_EXTERNAL;
    }

    ret = ACameraOutputTarget_create(ctx->image_reader_window, &ctx->camera_output_target);
    if (ret != ACAMERA_OK) {
        av_log(avctx, AV_LOG_ERROR,
               "Failed to create camera output target, error: %s.\n",
               camera_status_string(ret));
        return AVERROR_EXTERNAL;
    }

    ret = ACameraDevice_createCaptureRequest(ctx->camera_dev, TEMPLATE_RECORD, &ctx->capture_request);
    if (ret != ACAMERA_OK) {
        av_log(avctx, AV_LOG_ERROR,
               "Failed to create capture request, error: %s.\n",
               camera_status_string(ret));
        return AVERROR_EXTERNAL;
    }

    ret = ACaptureRequest_setEntry_i32(ctx->capture_request, ACAMERA_CONTROL_AE_TARGET_FPS_RANGE,
                                       2, ctx->framerate_range);
    if (ret != ACAMERA_OK) {
        av_log(avctx, AV_LOG_ERROR,
               "Failed to set target fps range in capture request, error: %s.\n",
               camera_status_string(ret));
        return AVERROR_EXTERNAL;
    }

    ret = ACaptureRequest_addTarget(ctx->capture_request, ctx->camera_output_target);
    if (ret != ACAMERA_OK) {
        av_log(avctx, AV_LOG_ERROR,
               "Failed to add capture request capture request, error: %s.\n",
               camera_status_string(ret));
        return AVERROR_EXTERNAL;
    }

    ctx->capture_session_state_callbacks.context = avctx;
    ctx->capture_session_state_callbacks.onClosed = capture_session_closed;
    ctx->capture_session_state_callbacks.onReady = capture_session_ready;
    ctx->capture_session_state_callbacks.onActive = capture_session_active;

    ret = ACameraDevice_createCaptureSession(ctx->camera_dev, ctx->capture_session_output_container,
                                             &ctx->capture_session_state_callbacks, &ctx->capture_session);
    if (ret != ACAMERA_OK) {
        av_log(avctx, AV_LOG_ERROR,
               "Failed to create capture session, error: %s.\n",
               camera_status_string(ret));
        return AVERROR_EXTERNAL;
    }

    ret = ACameraCaptureSession_setRepeatingRequest(ctx->capture_session, ((void*)0), 1, &ctx->capture_request, ((void*)0));
    if (ret != ACAMERA_OK) {
        av_log(avctx, AV_LOG_ERROR,
               "Failed to set repeating request on capture session, error: %s.\n",
               camera_status_string(ret));
        return AVERROR_EXTERNAL;
    }

    return 0;
}
