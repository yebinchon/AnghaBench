
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


struct TYPE_14__ {TYPE_1__* priv_data; } ;
struct TYPE_13__ {int camera_mgr; int input_queue_size; int input_queue; int exit; int got_image_format; } ;
typedef TYPE_1__ AndroidCameraCtx ;
typedef int AVPacket ;
typedef TYPE_2__ AVFormatContext ;


 int ACameraManager_create () ;
 int AVERROR_EXTERNAL ;
 int AV_LOG_ERROR ;
 int add_video_stream (TYPE_2__*) ;
 int android_camera_read_close (TYPE_2__*) ;
 int atomic_init (int *,int ) ;
 int av_err2str (int) ;
 int av_log (TYPE_2__*,int ,char*,...) ;
 int av_thread_message_queue_alloc (int *,int ,int) ;
 int create_capture_session (TYPE_2__*) ;
 int create_image_reader (TYPE_2__*) ;
 int get_sensor_orientation (TYPE_2__*) ;
 int match_framerate (TYPE_2__*) ;
 int match_video_size (TYPE_2__*) ;
 int open_camera (TYPE_2__*) ;

__attribute__((used)) static int android_camera_read_header(AVFormatContext *avctx)
{
    AndroidCameraCtx *ctx = avctx->priv_data;
    int ret;

    atomic_init(&ctx->got_image_format, 0);
    atomic_init(&ctx->exit, 0);

    ret = av_thread_message_queue_alloc(&ctx->input_queue, ctx->input_queue_size, sizeof(AVPacket));
    if (ret < 0) {
        av_log(avctx, AV_LOG_ERROR,
               "Failed to allocate input queue, error: %s.\n", av_err2str(ret));
        goto error;
    }

    ctx->camera_mgr = ACameraManager_create();
    if (!ctx->camera_mgr) {
        av_log(avctx, AV_LOG_ERROR, "Failed to create Android camera manager.\n");
        ret = AVERROR_EXTERNAL;
        goto error;
    }

    ret = open_camera(avctx);
    if (ret < 0) {
        av_log(avctx, AV_LOG_ERROR, "Failed to open camera.\n");
        goto error;
    }

    get_sensor_orientation(avctx);
    match_video_size(avctx);
    match_framerate(avctx);

    ret = create_image_reader(avctx);
    if (ret < 0) {
        goto error;
    }

    ret = create_capture_session(avctx);
    if (ret < 0) {
        goto error;
    }

    ret = add_video_stream(avctx);

error:
    if (ret < 0) {
        android_camera_read_close(avctx);
        av_log(avctx, AV_LOG_ERROR, "Failed to open android_camera.\n");
    }

    return ret;
}
