
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


typedef enum v4l2_quantization { ____Placeholder_v4l2_quantization } v4l2_quantization ;
typedef enum AVColorRange { ____Placeholder_AVColorRange } AVColorRange ;
struct TYPE_9__ {int type; } ;
struct TYPE_15__ {TYPE_6__* context; TYPE_1__ buf; } ;
typedef TYPE_7__ V4L2Buffer ;
struct TYPE_11__ {int quantization; } ;
struct TYPE_10__ {int quantization; } ;
struct TYPE_12__ {TYPE_3__ pix; TYPE_2__ pix_mp; } ;
struct TYPE_13__ {TYPE_4__ fmt; } ;
struct TYPE_14__ {TYPE_5__ format; } ;


 int AVCOL_RANGE_JPEG ;
 int AVCOL_RANGE_MPEG ;
 int AVCOL_RANGE_UNSPECIFIED ;


 scalar_t__ V4L2_TYPE_IS_MULTIPLANAR (int ) ;

__attribute__((used)) static enum AVColorRange v4l2_get_color_range(V4L2Buffer *buf)
{
    enum v4l2_quantization qt;

    qt = V4L2_TYPE_IS_MULTIPLANAR(buf->buf.type) ?
        buf->context->format.fmt.pix_mp.quantization :
        buf->context->format.fmt.pix.quantization;

    switch (qt) {
    case 128: return AVCOL_RANGE_MPEG;
    case 129: return AVCOL_RANGE_JPEG;
    default:
        break;
    }

     return AVCOL_RANGE_UNSPECIFIED;
}
