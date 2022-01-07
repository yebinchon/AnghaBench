
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_16__ TYPE_4__ ;
typedef struct TYPE_15__ TYPE_3__ ;
typedef struct TYPE_14__ TYPE_2__ ;
typedef struct TYPE_13__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_13__ {TYPE_3__* tmp_frame; } ;
typedef TYPE_1__ VTContext ;
struct TYPE_16__ {int codec_tag; TYPE_2__* opaque; } ;
struct TYPE_15__ {int height; int width; int format; int linesize; int * data; } ;
struct TYPE_14__ {TYPE_1__* hwaccel_ctx; } ;
typedef int OSType ;
typedef TYPE_2__ InputStream ;
typedef scalar_t__ CVReturn ;
typedef int CVPixelBufferRef ;
typedef TYPE_3__ AVFrame ;
typedef TYPE_4__ AVCodecContext ;


 int AVERROR (int ) ;
 int AVERROR_UNKNOWN ;
 int AV_LOG_ERROR ;
 int AV_PIX_FMT_BGRA ;
 int AV_PIX_FMT_NV12 ;
 int AV_PIX_FMT_P010 ;
 int AV_PIX_FMT_UYVY422 ;
 int AV_PIX_FMT_YUV420P ;
 int * CVPixelBufferGetBaseAddress (int ) ;
 int * CVPixelBufferGetBaseAddressOfPlane (int ,int) ;
 int CVPixelBufferGetBytesPerRow (int ) ;
 int CVPixelBufferGetBytesPerRowOfPlane (int ,int) ;
 int CVPixelBufferGetPixelFormatType (int ) ;
 int CVPixelBufferGetPlaneCount (int ) ;
 scalar_t__ CVPixelBufferIsPlanar (int ) ;
 scalar_t__ CVPixelBufferLockBaseAddress (int ,int ) ;
 int CVPixelBufferUnlockBaseAddress (int ,int ) ;
 int ENOSYS ;
 int av_fourcc2str (int ) ;
 int av_frame_copy_props (TYPE_3__*,TYPE_3__*) ;
 int av_frame_get_buffer (TYPE_3__*,int) ;
 int av_frame_move_ref (TYPE_3__*,TYPE_3__*) ;
 int av_frame_unref (TYPE_3__*) ;
 int av_image_copy (int *,int ,int const**,int*,int ,int ,int ) ;
 int av_log (int *,int ,char*,...) ;
 int kCVPixelBufferLock_ReadOnly ;







 scalar_t__ kCVReturnSuccess ;
 int videotoolbox_pixfmt ;

__attribute__((used)) static int videotoolbox_retrieve_data(AVCodecContext *s, AVFrame *frame)
{
    InputStream *ist = s->opaque;
    VTContext *vt = ist->hwaccel_ctx;
    CVPixelBufferRef pixbuf = (CVPixelBufferRef)frame->data[3];
    OSType pixel_format = CVPixelBufferGetPixelFormatType(pixbuf);
    CVReturn err;
    uint8_t *data[4] = { 0 };
    int linesize[4] = { 0 };
    int planes, ret, i;

    av_frame_unref(vt->tmp_frame);

    switch (pixel_format) {
    case 129: vt->tmp_frame->format = AV_PIX_FMT_YUV420P; break;
    case 128: vt->tmp_frame->format = AV_PIX_FMT_UYVY422; break;
    case 134: vt->tmp_frame->format = AV_PIX_FMT_BGRA; break;
    default:
        av_log(((void*)0), AV_LOG_ERROR,
               "%s: Unsupported pixel format: %s\n",
               av_fourcc2str(s->codec_tag), videotoolbox_pixfmt);
        return AVERROR(ENOSYS);
    }

    vt->tmp_frame->width = frame->width;
    vt->tmp_frame->height = frame->height;
    ret = av_frame_get_buffer(vt->tmp_frame, 32);
    if (ret < 0)
        return ret;

    err = CVPixelBufferLockBaseAddress(pixbuf, kCVPixelBufferLock_ReadOnly);
    if (err != kCVReturnSuccess) {
        av_log(((void*)0), AV_LOG_ERROR, "Error locking the pixel buffer.\n");
        return AVERROR_UNKNOWN;
    }

    if (CVPixelBufferIsPlanar(pixbuf)) {

        planes = CVPixelBufferGetPlaneCount(pixbuf);
        for (i = 0; i < planes; i++) {
            data[i] = CVPixelBufferGetBaseAddressOfPlane(pixbuf, i);
            linesize[i] = CVPixelBufferGetBytesPerRowOfPlane(pixbuf, i);
        }
    } else {
        data[0] = CVPixelBufferGetBaseAddress(pixbuf);
        linesize[0] = CVPixelBufferGetBytesPerRow(pixbuf);
    }

    av_image_copy(vt->tmp_frame->data, vt->tmp_frame->linesize,
                  (const uint8_t **)data, linesize, vt->tmp_frame->format,
                  frame->width, frame->height);

    ret = av_frame_copy_props(vt->tmp_frame, frame);
    CVPixelBufferUnlockBaseAddress(pixbuf, kCVPixelBufferLock_ReadOnly);
    if (ret < 0)
        return ret;

    av_frame_unref(frame);
    av_frame_move_ref(frame, vt->tmp_frame);

    return 0;
}
