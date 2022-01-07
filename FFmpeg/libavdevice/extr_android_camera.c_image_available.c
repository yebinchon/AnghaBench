
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
typedef scalar_t__ media_status_t ;
typedef int int64_t ;
typedef int int32_t ;
struct TYPE_11__ {TYPE_1__* priv_data; } ;
struct TYPE_10__ {int data; int pts; int stream_index; } ;
struct TYPE_9__ {int image_format; int input_queue_size; int exit; int input_queue; int height; int width; int got_image_format; } ;
typedef TYPE_1__ AndroidCameraCtx ;
typedef TYPE_2__ AVPacket ;
typedef TYPE_3__ AVFormatContext ;
typedef int AImageReader ;
typedef int AImage ;


 scalar_t__ AImageReader_acquireLatestImage (int *,int **) ;
 int AImage_delete (int *) ;
 int AImage_getPlaneData (int *,int,int **,int*) ;
 int AImage_getPlaneRowStride (int *,int,int *) ;
 int AImage_getTimestamp (int *,int *) ;
 scalar_t__ AMEDIA_IMGREADER_NO_BUFFER_AVAILABLE ;
 scalar_t__ AMEDIA_OK ;
 int AVERROR (int ) ;
 int AVERROR_EXTERNAL ;
 int AV_LOG_ERROR ;
 int AV_LOG_WARNING ;



 int AV_THREAD_MESSAGE_NONBLOCK ;
 int EAGAIN ;
 int ENOSYS ;
 int VIDEO_STREAM_INDEX ;
 scalar_t__ atomic_load (int *) ;
 int atomic_store (int *,int) ;
 int av_err2str (int) ;
 int av_image_copy_to_buffer (int ,int,int const* const*,int *,int,int ,int ,int) ;
 int av_image_get_buffer_size (int,int ,int ,int) ;
 int av_log (TYPE_3__*,int ,char*,...) ;
 int av_new_packet (TYPE_2__*,int) ;
 int av_packet_unref (TYPE_2__*) ;
 int av_thread_message_queue_send (int ,TYPE_2__*,int ) ;
 int av_thread_message_queue_set_err_recv (int ,int) ;
 int get_image_format (TYPE_3__*,int *) ;
 int media_status_string (scalar_t__) ;

__attribute__((used)) static void image_available(void *context, AImageReader *reader)
{
    AVFormatContext *avctx = context;
    AndroidCameraCtx *ctx = avctx->priv_data;
    media_status_t media_status;
    int ret = 0;

    AImage *image;
    int64_t image_timestamp;
    int32_t image_linestrides[4];
    uint8_t *image_plane_data[4];
    int plane_data_length[4];

    AVPacket pkt;
    int pkt_buffer_size = 0;

    media_status = AImageReader_acquireLatestImage(reader, &image);
    if (media_status != AMEDIA_OK) {
        if (media_status == AMEDIA_IMGREADER_NO_BUFFER_AVAILABLE) {
            av_log(avctx, AV_LOG_WARNING,
                   "An image reader frame was discarded");
        } else {
            av_log(avctx, AV_LOG_ERROR,
                   "Failed to acquire latest image from image reader, error: %s.\n",
                   media_status_string(media_status));
            ret = AVERROR_EXTERNAL;
        }
        goto error;
    }


    if (atomic_load(&ctx->exit)) {
        goto error;
    }


    if (!atomic_load(&ctx->got_image_format)) {
        ret = get_image_format(avctx, image);
        if (ret < 0) {
            av_log(avctx, AV_LOG_ERROR,
                   "Could not get image format of camera.\n");
            goto error;
        } else {
            atomic_store(&ctx->got_image_format, 1);
        }
    }

    pkt_buffer_size = av_image_get_buffer_size(ctx->image_format, ctx->width, ctx->height, 32);
    AImage_getTimestamp(image, &image_timestamp);

    AImage_getPlaneRowStride(image, 0, &image_linestrides[0]);
    AImage_getPlaneData(image, 0, &image_plane_data[0], &plane_data_length[0]);

    switch (ctx->image_format) {
        case 128:
            AImage_getPlaneRowStride(image, 1, &image_linestrides[1]);
            AImage_getPlaneData(image, 1, &image_plane_data[1], &plane_data_length[1]);
            AImage_getPlaneRowStride(image, 2, &image_linestrides[2]);
            AImage_getPlaneData(image, 2, &image_plane_data[2], &plane_data_length[2]);
            break;
        case 130:
            AImage_getPlaneRowStride(image, 1, &image_linestrides[1]);
            AImage_getPlaneData(image, 1, &image_plane_data[1], &plane_data_length[1]);
            break;
        case 129:
            AImage_getPlaneRowStride(image, 2, &image_linestrides[1]);
            AImage_getPlaneData(image, 2, &image_plane_data[1], &plane_data_length[1]);
            break;
        default:
            av_log(avctx, AV_LOG_ERROR, "Unsupported camera image format.\n");
            ret = AVERROR(ENOSYS);
            goto error;
    }

    ret = av_new_packet(&pkt, pkt_buffer_size);
    if (ret < 0) {
        av_log(avctx, AV_LOG_ERROR,
               "Failed to create new av packet, error: %s.\n", av_err2str(ret));
        goto error;
    }

    pkt.stream_index = VIDEO_STREAM_INDEX;
    pkt.pts = image_timestamp;
    av_image_copy_to_buffer(pkt.data, pkt_buffer_size,
                            (const uint8_t * const *) image_plane_data,
                            image_linestrides, ctx->image_format,
                            ctx->width, ctx->height, 32);

    ret = av_thread_message_queue_send(ctx->input_queue, &pkt, AV_THREAD_MESSAGE_NONBLOCK);

error:
    if (ret < 0) {
        if (ret != AVERROR(EAGAIN)) {
            av_log(avctx, AV_LOG_ERROR,
                   "Error while processing new image, error: %s.\n", av_err2str(ret));
            av_thread_message_queue_set_err_recv(ctx->input_queue, ret);
            atomic_store(&ctx->exit, 1);
        } else {
            av_log(avctx, AV_LOG_WARNING,
                   "Input queue was full, dropping frame, consider raising the input_queue_size option (current value: %d)\n",
                   ctx->input_queue_size);
        }
        if (pkt_buffer_size) {
            av_packet_unref(&pkt);
        }
    }

    AImage_delete(image);

    return;
}
