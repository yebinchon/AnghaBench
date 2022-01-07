
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_22__ TYPE_8__ ;
typedef struct TYPE_21__ TYPE_7__ ;
typedef struct TYPE_20__ TYPE_6__ ;
typedef struct TYPE_19__ TYPE_5__ ;
typedef struct TYPE_18__ TYPE_4__ ;
typedef struct TYPE_17__ TYPE_3__ ;
typedef struct TYPE_16__ TYPE_2__ ;
typedef struct TYPE_15__ TYPE_1__ ;
typedef struct TYPE_14__ TYPE_10__ ;


struct TYPE_17__ {int pixelformat; int height; } ;
struct TYPE_16__ {int pixelformat; int height; } ;
struct TYPE_18__ {TYPE_3__ pix; TYPE_2__ pix_mp; } ;
struct v4l2_format {TYPE_4__ fmt; int type; } ;
struct TYPE_20__ {int num_planes; TYPE_1__* context; } ;
typedef TYPE_6__ V4L2Buffer ;
struct TYPE_22__ {int* linesize; TYPE_10__** buf; int * data; int format; } ;
struct TYPE_21__ {int nb_components; int log2_chroma_h; TYPE_5__* comp; } ;
struct TYPE_19__ {scalar_t__ plane; } ;
struct TYPE_15__ {struct v4l2_format format; } ;
struct TYPE_14__ {int size; int data; } ;
typedef TYPE_7__ AVPixFmtDescriptor ;
typedef TYPE_8__ AVFrame ;


 int AV_CEIL_RSHIFT (int,int ) ;
 int FFMAX (int,scalar_t__) ;
 scalar_t__ V4L2_TYPE_IS_MULTIPLANAR (int ) ;
 TYPE_7__* av_pix_fmt_desc_get (int ) ;
 int v4l2_bufref_to_buf (TYPE_6__*,int,int ,int,int,TYPE_10__*) ;

__attribute__((used)) static int v4l2_buffer_swframe_to_buf(const AVFrame *frame, V4L2Buffer *out)
{
    int i, ret;
    struct v4l2_format fmt = out->context->format;
    int pixel_format = V4L2_TYPE_IS_MULTIPLANAR(fmt.type) ?
                       fmt.fmt.pix_mp.pixelformat : fmt.fmt.pix.pixelformat;
    int height = V4L2_TYPE_IS_MULTIPLANAR(fmt.type) ?
                       fmt.fmt.pix_mp.height : fmt.fmt.pix.height;
    int is_planar_format = 0;

    switch (pixel_format) {
    case 133:
    case 130:

    case 132:


    case 129:


    case 131:


    case 128:

    case 139:
    case 135:
    case 137:
    case 138:
    case 136:
    case 134:
        is_planar_format = 1;
    }

    if (!is_planar_format) {
        const AVPixFmtDescriptor *desc = av_pix_fmt_desc_get(frame->format);
        int planes_nb = 0;
        int offset = 0;

        for (i = 0; i < desc->nb_components; i++)
            planes_nb = FFMAX(planes_nb, desc->comp[i].plane + 1);

        for (i = 0; i < planes_nb; i++) {
            int size, h = height;
            if (i == 1 || i == 2) {
                h = AV_CEIL_RSHIFT(h, desc->log2_chroma_h);
            }
            size = frame->linesize[i] * h;
            ret = v4l2_bufref_to_buf(out, 0, frame->data[i], size, offset, frame->buf[i]);
            if (ret)
                return ret;
            offset += size;
        }
        return 0;
    }

    for (i = 0; i < out->num_planes; i++) {
        ret = v4l2_bufref_to_buf(out, i, frame->buf[i]->data, frame->buf[i]->size, 0, frame->buf[i]);
        if (ret)
            return ret;
    }

    return 0;
}
