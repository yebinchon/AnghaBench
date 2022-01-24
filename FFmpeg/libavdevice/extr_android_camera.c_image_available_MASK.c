#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
typedef  scalar_t__ media_status_t ;
typedef  int /*<<< orphan*/  int64_t ;
typedef  int /*<<< orphan*/  int32_t ;
struct TYPE_11__ {TYPE_1__* priv_data; } ;
struct TYPE_10__ {int /*<<< orphan*/  data; int /*<<< orphan*/  pts; int /*<<< orphan*/  stream_index; } ;
struct TYPE_9__ {int image_format; int /*<<< orphan*/  input_queue_size; int /*<<< orphan*/  exit; int /*<<< orphan*/  input_queue; int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  got_image_format; } ;
typedef  TYPE_1__ AndroidCameraCtx ;
typedef  TYPE_2__ AVPacket ;
typedef  TYPE_3__ AVFormatContext ;
typedef  int /*<<< orphan*/  AImageReader ;
typedef  int /*<<< orphan*/  AImage ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ **,int*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 scalar_t__ AMEDIA_IMGREADER_NO_BUFFER_AVAILABLE ; 
 scalar_t__ AMEDIA_OK ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int AVERROR_EXTERNAL ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_LOG_WARNING ; 
#define  AV_PIX_FMT_NV12 130 
#define  AV_PIX_FMT_NV21 129 
#define  AV_PIX_FMT_YUV420P 128 
 int /*<<< orphan*/  AV_THREAD_MESSAGE_NONBLOCK ; 
 int /*<<< orphan*/  EAGAIN ; 
 int /*<<< orphan*/  ENOSYS ; 
 int /*<<< orphan*/  VIDEO_STREAM_INDEX ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int,int /*<<< orphan*/  const* const*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int FUNC10 (int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_3__*,int /*<<< orphan*/ ,char*,...) ; 
 int FUNC12 (TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_2__*) ; 
 int FUNC14 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,int) ; 
 int FUNC16 (TYPE_3__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC17 (scalar_t__) ; 

__attribute__((used)) static void FUNC18(void *context, AImageReader *reader)
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

    media_status = FUNC0(reader, &image);
    if (media_status != AMEDIA_OK) {
        if (media_status == AMEDIA_IMGREADER_NO_BUFFER_AVAILABLE) {
            FUNC11(avctx, AV_LOG_WARNING,
                   "An image reader frame was discarded");
        } else {
            FUNC11(avctx, AV_LOG_ERROR,
                   "Failed to acquire latest image from image reader, error: %s.\n",
                   FUNC17(media_status));
            ret = AVERROR_EXTERNAL;
        }
        goto error;
    }

    // Silently drop frames when exit is set
    if (FUNC6(&ctx->exit)) {
        goto error;
    }

    // Determine actual image format
    if (!FUNC6(&ctx->got_image_format)) {
        ret = FUNC16(avctx, image);
        if (ret < 0) {
            FUNC11(avctx, AV_LOG_ERROR,
                   "Could not get image format of camera.\n");
            goto error;
        } else {
            FUNC7(&ctx->got_image_format, 1);
        }
    }

    pkt_buffer_size = FUNC10(ctx->image_format, ctx->width, ctx->height, 32);
    FUNC4(image, &image_timestamp);

    FUNC3(image, 0, &image_linestrides[0]);
    FUNC2(image, 0, &image_plane_data[0], &plane_data_length[0]);

    switch (ctx->image_format) {
        case AV_PIX_FMT_YUV420P:
            FUNC3(image, 1, &image_linestrides[1]);
            FUNC2(image, 1, &image_plane_data[1], &plane_data_length[1]);
            FUNC3(image, 2, &image_linestrides[2]);
            FUNC2(image, 2, &image_plane_data[2], &plane_data_length[2]);
            break;
        case AV_PIX_FMT_NV12:
            FUNC3(image, 1, &image_linestrides[1]);
            FUNC2(image, 1, &image_plane_data[1], &plane_data_length[1]);
            break;
        case AV_PIX_FMT_NV21:
            FUNC3(image, 2, &image_linestrides[1]);
            FUNC2(image, 2, &image_plane_data[1], &plane_data_length[1]);
            break;
        default:
            FUNC11(avctx, AV_LOG_ERROR, "Unsupported camera image format.\n");
            ret = FUNC5(ENOSYS);
            goto error;
    }

    ret = FUNC12(&pkt, pkt_buffer_size);
    if (ret < 0) {
        FUNC11(avctx, AV_LOG_ERROR,
               "Failed to create new av packet, error: %s.\n", FUNC8(ret));
        goto error;
    }

    pkt.stream_index = VIDEO_STREAM_INDEX;
    pkt.pts = image_timestamp;
    FUNC9(pkt.data, pkt_buffer_size,
                            (const uint8_t * const *) image_plane_data,
                            image_linestrides, ctx->image_format,
                            ctx->width, ctx->height, 32);

    ret = FUNC14(ctx->input_queue, &pkt, AV_THREAD_MESSAGE_NONBLOCK);

error:
    if (ret < 0) {
        if (ret != FUNC5(EAGAIN)) {
            FUNC11(avctx, AV_LOG_ERROR,
                   "Error while processing new image, error: %s.\n", FUNC8(ret));
            FUNC15(ctx->input_queue, ret);
            FUNC7(&ctx->exit, 1);
        } else {
            FUNC11(avctx, AV_LOG_WARNING,
                   "Input queue was full, dropping frame, consider raising the input_queue_size option (current value: %d)\n",
                   ctx->input_queue_size);
        }
        if (pkt_buffer_size) {
            FUNC13(&pkt);
        }
    }

    FUNC1(image);

    return;
}