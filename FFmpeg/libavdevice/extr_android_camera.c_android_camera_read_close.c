
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_5__ {TYPE_1__* priv_data; } ;
struct TYPE_4__ {scalar_t__ input_queue; int * camera_mgr; int camera_id; int * camera_metadata; int * image_reader; int * camera_dev; int * capture_session_output_container; int * image_reader_window; int * capture_session_output; int * camera_output_target; int * capture_request; int * capture_session; int exit; } ;
typedef TYPE_1__ AndroidCameraCtx ;
typedef int AVPacket ;
typedef TYPE_2__ AVFormatContext ;


 int ACameraCaptureSession_close (int *) ;
 int ACameraCaptureSession_stopRepeating (int *) ;
 int ACameraDevice_close (int *) ;
 int ACameraManager_delete (int *) ;
 int ACameraMetadata_free (int *) ;
 int ACameraOutputTarget_free (int *) ;
 int ACaptureRequest_free (int *) ;
 int ACaptureRequest_removeTarget (int *,int *) ;
 int ACaptureSessionOutputContainer_free (int *) ;
 int ACaptureSessionOutputContainer_remove (int *,int *) ;
 int ACaptureSessionOutput_free (int *) ;
 int AImageReader_delete (int *) ;
 int ANativeWindow_release (int *) ;
 int AVERROR_EOF ;
 int AV_THREAD_MESSAGE_NONBLOCK ;
 int atomic_store (int *,int) ;
 int av_freep (int *) ;
 int av_packet_unref (int *) ;
 int av_thread_message_queue_free (scalar_t__*) ;
 scalar_t__ av_thread_message_queue_recv (scalar_t__,int *,int ) ;
 int av_thread_message_queue_set_err_send (scalar_t__,int ) ;

__attribute__((used)) static int android_camera_read_close(AVFormatContext *avctx)
{
    AndroidCameraCtx *ctx = avctx->priv_data;

    atomic_store(&ctx->exit, 1);

    if (ctx->capture_session) {
        ACameraCaptureSession_stopRepeating(ctx->capture_session);



        ACameraCaptureSession_close(ctx->capture_session);
        ctx->capture_session = ((void*)0);
    }

    if (ctx->capture_request) {
        ACaptureRequest_removeTarget(ctx->capture_request, ctx->camera_output_target);
        ACaptureRequest_free(ctx->capture_request);
        ctx->capture_request = ((void*)0);
    }

    if (ctx->camera_output_target) {
        ACameraOutputTarget_free(ctx->camera_output_target);
        ctx->camera_output_target = ((void*)0);
    }

    if (ctx->capture_session_output) {
        ACaptureSessionOutputContainer_remove(ctx->capture_session_output_container,
                ctx->capture_session_output);
        ACaptureSessionOutput_free(ctx->capture_session_output);
        ctx->capture_session_output = ((void*)0);
    }

    if (ctx->image_reader_window) {
        ANativeWindow_release(ctx->image_reader_window);
        ctx->image_reader_window = ((void*)0);
    }

    if (ctx->capture_session_output_container) {
        ACaptureSessionOutputContainer_free(ctx->capture_session_output_container);
        ctx->capture_session_output_container = ((void*)0);
    }

    if (ctx->camera_dev) {
        ACameraDevice_close(ctx->camera_dev);
        ctx->camera_dev = ((void*)0);
    }

    if (ctx->image_reader) {
        AImageReader_delete(ctx->image_reader);
        ctx->image_reader = ((void*)0);
    }

    if (ctx->camera_metadata) {
        ACameraMetadata_free(ctx->camera_metadata);
        ctx->camera_metadata = ((void*)0);
    }

    av_freep(&ctx->camera_id);

    if (ctx->camera_mgr) {
        ACameraManager_delete(ctx->camera_mgr);
        ctx->camera_mgr = ((void*)0);
    }

    if (ctx->input_queue) {
        AVPacket pkt;
        av_thread_message_queue_set_err_send(ctx->input_queue, AVERROR_EOF);
        while (av_thread_message_queue_recv(ctx->input_queue, &pkt, AV_THREAD_MESSAGE_NONBLOCK) >= 0) {
            av_packet_unref(&pkt);
        }
        av_thread_message_queue_free(&ctx->input_queue);
    }

    return 0;
}
