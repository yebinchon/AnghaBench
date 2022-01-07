
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int max_plane; int fmt; } ;
struct TYPE_7__ {int size; int data; TYPE_2__* plane; TYPE_1__ f; } ;
typedef TYPE_3__ hb_buffer_t ;
struct TYPE_6__ {int stride; int height_stride; } ;


 int av_image_fill_pointers (int **,int ,int ,int ,int*) ;
 int hb_error (char*,int,int) ;

int hb_picture_fill(uint8_t *data[], int stride[], hb_buffer_t *buf)
{
    int ret, ii;

    for (ii = 0; ii <= buf->f.max_plane; ii++)
        stride[ii] = buf->plane[ii].stride;
    for (; ii < 4; ii++)
        stride[ii] = stride[ii - 1];

    ret = av_image_fill_pointers(data, buf->f.fmt,
                                 buf->plane[0].height_stride,
                                 buf->data, stride);
    if (ret != buf->size)
    {
        hb_error("Internal error hb_picture_fill expected %d, got %d",
                 buf->size, ret);
    }
    return ret;
}
