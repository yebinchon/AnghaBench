
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_4__ ;
typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_7__ {int fmt; } ;
struct TYPE_9__ {TYPE_2__* plane; TYPE_1__ f; } ;
typedef TYPE_3__ hb_buffer_t ;
struct TYPE_10__ {int log2_chroma_w; int log2_chroma_h; } ;
struct TYPE_8__ {int stride; int * data; } ;
typedef TYPE_4__ AVPixFmtDescriptor ;


 TYPE_4__* av_pix_fmt_desc_get (int ) ;

int hb_picture_crop(uint8_t *data[], int stride[], hb_buffer_t *buf,
                    int top, int left)
{
    const AVPixFmtDescriptor *desc = av_pix_fmt_desc_get(buf->f.fmt);
    int x_shift, y_shift;

    if (desc == ((void*)0))
        return -1;

    x_shift = desc->log2_chroma_w;
    y_shift = desc->log2_chroma_h;

    data[0] = buf->plane[0].data + top * buf->plane[0].stride + left;
    data[1] = buf->plane[1].data + (top >> y_shift) * buf->plane[1].stride +
              (left >> x_shift);
    data[2] = buf->plane[2].data + (top >> y_shift) * buf->plane[2].stride +
              (left >> x_shift);
    data[3] = ((void*)0);

    stride[0] = buf->plane[0].stride;
    stride[1] = buf->plane[1].stride;
    stride[2] = buf->plane[2].stride;
    stride[3] = 0;

    return 0;
}
