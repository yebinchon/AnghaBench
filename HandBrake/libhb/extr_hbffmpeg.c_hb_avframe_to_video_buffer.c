
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_13__ TYPE_4__ ;
typedef struct TYPE_12__ TYPE_3__ ;
typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


typedef int uint8_t ;
struct TYPE_10__ {int max_plane; } ;
struct TYPE_12__ {TYPE_2__* plane; TYPE_1__ f; } ;
typedef TYPE_3__ hb_buffer_t ;
struct TYPE_13__ {int* linesize; int ** data; int height; int width; int format; } ;
struct TYPE_11__ {int stride; int height; int * data; } ;
typedef int AVRational ;
typedef TYPE_4__ AVFrame ;


 int ABS (int) ;
 int hb_avframe_set_video_buffer_flags (TYPE_3__*,TYPE_4__*,int ) ;
 TYPE_3__* hb_frame_buffer_init (int ,int ,int ) ;
 int memcpy (int *,int *,int) ;

hb_buffer_t * hb_avframe_to_video_buffer(AVFrame *frame, AVRational time_base)
{
    hb_buffer_t * buf;

    buf = hb_frame_buffer_init(frame->format, frame->width, frame->height);
    if (buf == ((void*)0))
    {
        return ((void*)0);
    }

    hb_avframe_set_video_buffer_flags(buf, frame, time_base);

    int pp;
    for (pp = 0; pp <= buf->f.max_plane; pp++)
    {
        int yy;
        int stride = buf->plane[pp].stride;
        int height = buf->plane[pp].height;
        int linesize = frame->linesize[pp];
        int size = linesize < stride ? ABS(linesize) : stride;
        uint8_t * dst = buf->plane[pp].data;
        uint8_t * src = frame->data[pp];

        for (yy = 0; yy < height; yy++)
        {
            memcpy(dst, src, size);
            dst += stride;
            src += linesize;
        }
    }

    return buf;
}
