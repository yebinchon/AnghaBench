
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_5__ {int max_plane; } ;
struct TYPE_7__ {TYPE_2__* plane; TYPE_1__ f; } ;
typedef TYPE_3__ hb_buffer_t ;
struct TYPE_6__ {int width; int height; int stride; int height_stride; int * data; } ;


 int memset (int *,int,int) ;

void hb_frame_buffer_blank_stride(hb_buffer_t * buf)
{
    uint8_t * data;
    int pp, yy, width, height, stride, height_stride;

    for (pp = 0; pp <= buf->f.max_plane; pp++)
    {
        data = buf->plane[pp].data;
        width = buf->plane[pp].width;
        height = buf->plane[pp].height;
        stride = buf->plane[pp].stride;
        height_stride = buf->plane[pp].height_stride;

        if (data != ((void*)0))
        {

            for (yy = 0; yy < height; yy++)
            {
                memset(data + yy * stride + width, 0x80, stride - width);
            }

            for (yy = height; yy < height_stride; yy++)
            {
                memset(data + yy * stride, 0x80, stride);
            }
        }
    }
}
