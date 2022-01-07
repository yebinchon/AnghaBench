
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_10__ {int max_plane; int width; int height; int fmt; } ;
struct TYPE_11__ {int size; TYPE_2__ f; } ;
typedef TYPE_3__ hb_buffer_t ;
struct TYPE_12__ {int nb_components; TYPE_1__* comp; } ;
struct TYPE_9__ {int plane; } ;
typedef TYPE_4__ AVPixFmtDescriptor ;


 TYPE_4__* av_pix_fmt_desc_get (int ) ;
 int hb_buffer_init_planes (TYPE_3__*) ;
 int hb_buffer_realloc (TYPE_3__*,int) ;
 int hb_image_height_stride (int ,int,int) ;
 int hb_image_stride (int ,int,int) ;

void hb_video_buffer_realloc( hb_buffer_t * buf, int width, int height )
{
    const AVPixFmtDescriptor * desc = av_pix_fmt_desc_get(buf->f.fmt);
    uint8_t has_plane[4] = {0,};
    int ii, pp;

    if (desc == ((void*)0))
    {
        return;
    }

    buf->f.max_plane = 0;
    int size = 0;
    for (ii = 0; ii < desc->nb_components; ii++)
    {
        pp = desc->comp[ii].plane;
        if (pp > buf->f.max_plane)
        {
            buf->f.max_plane = pp;
        }
        if (!has_plane[pp])
        {
            has_plane[pp] = 1;
            size += hb_image_stride(buf->f.fmt, width, pp) *
                    hb_image_height_stride(buf->f.fmt, height, pp );
        }
    }

    hb_buffer_realloc(buf, size );

    buf->f.width = width;
    buf->f.height = height;
    buf->size = size;

    hb_buffer_init_planes(buf);
}
