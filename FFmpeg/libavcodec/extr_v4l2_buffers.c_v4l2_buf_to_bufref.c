
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_3__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


struct TYPE_9__ {int num_planes; TYPE_2__* plane_info; TYPE_1__* planes; } ;
typedef TYPE_3__ V4L2Buffer ;
struct TYPE_8__ {int length; scalar_t__ mm_addr; } ;
struct TYPE_7__ {int data_offset; } ;
typedef int AVBufferRef ;


 int AVERROR (int ) ;
 int EINVAL ;
 int ENOMEM ;
 int * av_buffer_create (char*,int ,int ,TYPE_3__*,int ) ;
 int av_buffer_unref (int **) ;
 int v4l2_buf_increase_ref (TYPE_3__*) ;
 int v4l2_free_buffer ;

__attribute__((used)) static int v4l2_buf_to_bufref(V4L2Buffer *in, int plane, AVBufferRef **buf)
{
    int ret;

    if (plane >= in->num_planes)
        return AVERROR(EINVAL);


    *buf = av_buffer_create((char *)in->plane_info[plane].mm_addr + in->planes[plane].data_offset,
                            in->plane_info[plane].length, v4l2_free_buffer, in, 0);
    if (!*buf)
        return AVERROR(ENOMEM);

    ret = v4l2_buf_increase_ref(in);
    if (ret)
        av_buffer_unref(buf);

    return ret;
}
