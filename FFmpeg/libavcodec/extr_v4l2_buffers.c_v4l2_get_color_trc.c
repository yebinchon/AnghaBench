
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_15__ TYPE_7__ ;
typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef enum v4l2_ycbcr_encoding { ____Placeholder_v4l2_ycbcr_encoding } v4l2_ycbcr_encoding ;
typedef enum v4l2_xfer_func { ____Placeholder_v4l2_xfer_func } v4l2_xfer_func ;
typedef enum v4l2_colorspace { ____Placeholder_v4l2_colorspace } v4l2_colorspace ;
typedef enum AVColorTransferCharacteristic { ____Placeholder_AVColorTransferCharacteristic } AVColorTransferCharacteristic ;
struct TYPE_9__ {int type; } ;
struct TYPE_15__ {TYPE_6__* context; TYPE_1__ buf; } ;
typedef TYPE_7__ V4L2Buffer ;
struct TYPE_11__ {int colorspace; int ycbcr_enc; int xfer_func; } ;
struct TYPE_10__ {int colorspace; int ycbcr_enc; int xfer_func; } ;
struct TYPE_12__ {TYPE_3__ pix; TYPE_2__ pix_mp; } ;
struct TYPE_13__ {TYPE_4__ fmt; } ;
struct TYPE_14__ {TYPE_5__ format; } ;


 int AVCOL_TRC_BT1361_ECG ;
 int AVCOL_TRC_BT709 ;
 int AVCOL_TRC_GAMMA22 ;
 int AVCOL_TRC_GAMMA28 ;
 int AVCOL_TRC_IEC61966_2_1 ;
 int AVCOL_TRC_SMPTE170M ;
 int AVCOL_TRC_SMPTE240M ;
 int AVCOL_TRC_UNSPECIFIED ;




 scalar_t__ V4L2_TYPE_IS_MULTIPLANAR (int ) ;





__attribute__((used)) static enum AVColorTransferCharacteristic v4l2_get_color_trc(V4L2Buffer *buf)
{
    enum v4l2_ycbcr_encoding ycbcr;
    enum v4l2_xfer_func xfer;
    enum v4l2_colorspace cs;

    cs = V4L2_TYPE_IS_MULTIPLANAR(buf->buf.type) ?
        buf->context->format.fmt.pix_mp.colorspace :
        buf->context->format.fmt.pix.colorspace;

    ycbcr = V4L2_TYPE_IS_MULTIPLANAR(buf->buf.type) ?
        buf->context->format.fmt.pix_mp.ycbcr_enc:
        buf->context->format.fmt.pix.ycbcr_enc;

    xfer = V4L2_TYPE_IS_MULTIPLANAR(buf->buf.type) ?
        buf->context->format.fmt.pix_mp.xfer_func:
        buf->context->format.fmt.pix.xfer_func;

    switch (xfer) {
    case 131: return AVCOL_TRC_BT709;
    case 130: return AVCOL_TRC_IEC61966_2_1;
    default:
        break;
    }

    switch (cs) {
    case 134: return AVCOL_TRC_GAMMA22;
    case 135: return AVCOL_TRC_GAMMA28;
    case 133: return AVCOL_TRC_SMPTE170M;
    case 132: return AVCOL_TRC_SMPTE240M;
    default:
        break;
    }

    switch (ycbcr) {
    case 128:
    case 129: return AVCOL_TRC_BT1361_ECG;
    default:
        break;
    }

    return AVCOL_TRC_UNSPECIFIED;
}
