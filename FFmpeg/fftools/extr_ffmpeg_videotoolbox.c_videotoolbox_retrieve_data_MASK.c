#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_4__ ;
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_13__ {TYPE_3__* tmp_frame; } ;
typedef  TYPE_1__ VTContext ;
struct TYPE_16__ {int /*<<< orphan*/  codec_tag; TYPE_2__* opaque; } ;
struct TYPE_15__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; int /*<<< orphan*/  format; int /*<<< orphan*/  linesize; int /*<<< orphan*/ * data; } ;
struct TYPE_14__ {TYPE_1__* hwaccel_ctx; } ;
typedef  int OSType ;
typedef  TYPE_2__ InputStream ;
typedef  scalar_t__ CVReturn ;
typedef  int /*<<< orphan*/  CVPixelBufferRef ;
typedef  TYPE_3__ AVFrame ;
typedef  TYPE_4__ AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AVERROR_UNKNOWN ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  AV_PIX_FMT_BGRA ; 
 int /*<<< orphan*/  AV_PIX_FMT_NV12 ; 
 int /*<<< orphan*/  AV_PIX_FMT_P010 ; 
 int /*<<< orphan*/  AV_PIX_FMT_UYVY422 ; 
 int /*<<< orphan*/  AV_PIX_FMT_YUV420P ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC2 (int /*<<< orphan*/ ,int) ; 
 int FUNC3 (int /*<<< orphan*/ ) ; 
 int FUNC4 (int /*<<< orphan*/ ,int) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOSYS ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int FUNC11 (TYPE_3__*,TYPE_3__*) ; 
 int FUNC12 (TYPE_3__*,int) ; 
 int /*<<< orphan*/  FUNC13 (TYPE_3__*,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC14 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/  const**,int*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/  kCVPixelBufferLock_ReadOnly ; 
#define  kCVPixelFormatType_32BGRA 134 
#define  kCVPixelFormatType_420YpCbCr10BiPlanarFullRange 133 
#define  kCVPixelFormatType_420YpCbCr10BiPlanarVideoRange 132 
#define  kCVPixelFormatType_420YpCbCr8BiPlanarFullRange 131 
#define  kCVPixelFormatType_420YpCbCr8BiPlanarVideoRange 130 
#define  kCVPixelFormatType_420YpCbCr8Planar 129 
#define  kCVPixelFormatType_422YpCbCr8 128 
 scalar_t__ kCVReturnSuccess ; 
 int /*<<< orphan*/  videotoolbox_pixfmt ; 

__attribute__((used)) static int FUNC17(AVCodecContext *s, AVFrame *frame)
{
    InputStream *ist = s->opaque;
    VTContext  *vt = ist->hwaccel_ctx;
    CVPixelBufferRef pixbuf = (CVPixelBufferRef)frame->data[3];
    OSType pixel_format = FUNC5(pixbuf);
    CVReturn err;
    uint8_t *data[4] = { 0 };
    int linesize[4] = { 0 };
    int planes, ret, i;

    FUNC14(vt->tmp_frame);

    switch (pixel_format) {
    case kCVPixelFormatType_420YpCbCr8Planar: vt->tmp_frame->format = AV_PIX_FMT_YUV420P; break;
    case kCVPixelFormatType_422YpCbCr8:       vt->tmp_frame->format = AV_PIX_FMT_UYVY422; break;
    case kCVPixelFormatType_32BGRA:           vt->tmp_frame->format = AV_PIX_FMT_BGRA; break;
#ifdef kCFCoreFoundationVersionNumber10_7
    case kCVPixelFormatType_420YpCbCr8BiPlanarVideoRange:
    case kCVPixelFormatType_420YpCbCr8BiPlanarFullRange: vt->tmp_frame->format = AV_PIX_FMT_NV12; break;
#endif
#if HAVE_KCVPIXELFORMATTYPE_420YPCBCR10BIPLANARVIDEORANGE
    case kCVPixelFormatType_420YpCbCr10BiPlanarVideoRange:
    case kCVPixelFormatType_420YpCbCr10BiPlanarFullRange: vt->tmp_frame->format = AV_PIX_FMT_P010; break;
#endif
    default:
        FUNC16(NULL, AV_LOG_ERROR,
               "%s: Unsupported pixel format: %s\n",
               FUNC10(s->codec_tag), videotoolbox_pixfmt);
        return FUNC0(ENOSYS);
    }

    vt->tmp_frame->width  = frame->width;
    vt->tmp_frame->height = frame->height;
    ret = FUNC12(vt->tmp_frame, 32);
    if (ret < 0)
        return ret;

    err = FUNC8(pixbuf, kCVPixelBufferLock_ReadOnly);
    if (err != kCVReturnSuccess) {
        FUNC16(NULL, AV_LOG_ERROR, "Error locking the pixel buffer.\n");
        return AVERROR_UNKNOWN;
    }

    if (FUNC7(pixbuf)) {

        planes = FUNC6(pixbuf);
        for (i = 0; i < planes; i++) {
            data[i]     = FUNC2(pixbuf, i);
            linesize[i] = FUNC4(pixbuf, i);
        }
    } else {
        data[0] = FUNC1(pixbuf);
        linesize[0] = FUNC3(pixbuf);
    }

    FUNC15(vt->tmp_frame->data, vt->tmp_frame->linesize,
                  (const uint8_t **)data, linesize, vt->tmp_frame->format,
                  frame->width, frame->height);

    ret = FUNC11(vt->tmp_frame, frame);
    FUNC9(pixbuf, kCVPixelBufferLock_ReadOnly);
    if (ret < 0)
        return ret;

    FUNC14(frame);
    FUNC13(frame, vt->tmp_frame);

    return 0;
}