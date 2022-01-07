
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
typedef enum v4l2_colorspace { ____Placeholder_v4l2_colorspace } v4l2_colorspace ;
typedef enum AVColorPrimaries { ____Placeholder_AVColorPrimaries } AVColorPrimaries ;
struct TYPE_10__ {int type; } ;
struct TYPE_15__ {TYPE_6__* context; TYPE_2__ buf; } ;
typedef TYPE_7__ V4L2Buffer ;
struct TYPE_9__ {int colorspace; int ycbcr_enc; } ;
struct TYPE_11__ {int colorspace; int ycbcr_enc; } ;
struct TYPE_12__ {TYPE_1__ pix; TYPE_3__ pix_mp; } ;
struct TYPE_13__ {TYPE_4__ fmt; } ;
struct TYPE_14__ {TYPE_5__ format; } ;


 int AVCOL_PRI_BT2020 ;
 int AVCOL_PRI_BT470BG ;
 int AVCOL_PRI_BT470M ;
 int AVCOL_PRI_BT709 ;
 int AVCOL_PRI_SMPTE170M ;
 int AVCOL_PRI_SMPTE240M ;
 int AVCOL_PRI_UNSPECIFIED ;




 scalar_t__ V4L2_TYPE_IS_MULTIPLANAR (int ) ;





__attribute__((used)) static enum AVColorPrimaries v4l2_get_color_primaries(V4L2Buffer *buf)
{
    enum v4l2_ycbcr_encoding ycbcr;
    enum v4l2_colorspace cs;

    cs = V4L2_TYPE_IS_MULTIPLANAR(buf->buf.type) ?
        buf->context->format.fmt.pix_mp.colorspace :
        buf->context->format.fmt.pix.colorspace;

    ycbcr = V4L2_TYPE_IS_MULTIPLANAR(buf->buf.type) ?
        buf->context->format.fmt.pix_mp.ycbcr_enc:
        buf->context->format.fmt.pix.ycbcr_enc;

    switch(ycbcr) {
    case 128:
    case 130: return AVCOL_PRI_BT709;
    case 129:
    case 131:return AVCOL_PRI_BT470M;
    default:
        break;
    }

    switch(cs) {
    case 135: return AVCOL_PRI_BT470BG;
    case 133: return AVCOL_PRI_SMPTE170M;
    case 132: return AVCOL_PRI_SMPTE240M;
    case 134: return AVCOL_PRI_BT2020;
    default:
        break;
    }

    return AVCOL_PRI_UNSPECIFIED;
}
