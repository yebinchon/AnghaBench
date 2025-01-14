
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_29__ TYPE_9__ ;
typedef struct TYPE_28__ TYPE_8__ ;
typedef struct TYPE_27__ TYPE_7__ ;
typedef struct TYPE_26__ TYPE_6__ ;
typedef struct TYPE_25__ TYPE_5__ ;
typedef struct TYPE_24__ TYPE_4__ ;
typedef struct TYPE_23__ TYPE_3__ ;
typedef struct TYPE_22__ TYPE_2__ ;
typedef struct TYPE_21__ TYPE_1__ ;
typedef struct TYPE_20__ TYPE_15__ ;
typedef struct TYPE_19__ TYPE_12__ ;
typedef struct TYPE_18__ TYPE_11__ ;
typedef struct TYPE_17__ TYPE_10__ ;


struct TYPE_23__ {int bytesperline; } ;
struct TYPE_22__ {TYPE_1__* plane_fmt; } ;
struct TYPE_24__ {TYPE_3__ pix; TYPE_2__ pix_mp; } ;
struct TYPE_25__ {TYPE_4__ fmt; } ;
struct TYPE_17__ {int type; TYPE_5__ format; } ;
typedef TYPE_10__ V4L2Context ;
struct TYPE_28__ {TYPE_9__* planes; int offset; } ;
struct TYPE_19__ {int index; int length; int bytesused; TYPE_8__ m; int type; int memory; } ;
struct TYPE_18__ {int num_planes; TYPE_9__* planes; TYPE_12__ buf; int status; TYPE_7__* plane_info; TYPE_10__* context; } ;
typedef TYPE_11__ V4L2Buffer ;
struct TYPE_26__ {int mem_offset; } ;
struct TYPE_29__ {int length; int bytesused; TYPE_6__ m; } ;
struct TYPE_27__ {int length; scalar_t__ mm_addr; int bytesperline; } ;
struct TYPE_21__ {int bytesperline; } ;
struct TYPE_20__ {int fd; } ;


 int AVERROR (int ) ;
 int ENOMEM ;
 scalar_t__ MAP_FAILED ;
 int MAP_SHARED ;
 int PROT_READ ;
 int PROT_WRITE ;
 int V4L2BUF_AVAILABLE ;
 int V4L2_MEMORY_MMAP ;
 scalar_t__ V4L2_TYPE_IS_MULTIPLANAR (int ) ;
 scalar_t__ V4L2_TYPE_IS_OUTPUT (int ) ;
 int VIDEO_MAX_PLANES ;
 int VIDIOC_QUERYBUF ;
 TYPE_15__* buf_to_m2mctx (TYPE_11__*) ;
 int errno ;
 int ff_v4l2_buffer_enqueue (TYPE_11__*) ;
 int ioctl (int ,int ,TYPE_12__*) ;
 void* mmap (int *,int,int,int ,int ,int ) ;

int ff_v4l2_buffer_initialize(V4L2Buffer* avbuf, int index)
{
    V4L2Context *ctx = avbuf->context;
    int ret, i;

    avbuf->buf.memory = V4L2_MEMORY_MMAP;
    avbuf->buf.type = ctx->type;
    avbuf->buf.index = index;

    if (V4L2_TYPE_IS_MULTIPLANAR(ctx->type)) {
        avbuf->buf.length = VIDEO_MAX_PLANES;
        avbuf->buf.m.planes = avbuf->planes;
    }

    ret = ioctl(buf_to_m2mctx(avbuf)->fd, VIDIOC_QUERYBUF, &avbuf->buf);
    if (ret < 0)
        return AVERROR(errno);

    if (V4L2_TYPE_IS_MULTIPLANAR(ctx->type)) {
        avbuf->num_planes = 0;

        for (i = 0; i < avbuf->buf.length; i++) {
            if (avbuf->buf.m.planes[i].length)
                avbuf->num_planes++;
        }
    } else
        avbuf->num_planes = 1;

    for (i = 0; i < avbuf->num_planes; i++) {

        avbuf->plane_info[i].bytesperline = V4L2_TYPE_IS_MULTIPLANAR(ctx->type) ?
            ctx->format.fmt.pix_mp.plane_fmt[i].bytesperline :
            ctx->format.fmt.pix.bytesperline;

        if (V4L2_TYPE_IS_MULTIPLANAR(ctx->type)) {
            avbuf->plane_info[i].length = avbuf->buf.m.planes[i].length;
            avbuf->plane_info[i].mm_addr = mmap(((void*)0), avbuf->buf.m.planes[i].length,
                                           PROT_READ | PROT_WRITE, MAP_SHARED,
                                           buf_to_m2mctx(avbuf)->fd, avbuf->buf.m.planes[i].m.mem_offset);
        } else {
            avbuf->plane_info[i].length = avbuf->buf.length;
            avbuf->plane_info[i].mm_addr = mmap(((void*)0), avbuf->buf.length,
                                          PROT_READ | PROT_WRITE, MAP_SHARED,
                                          buf_to_m2mctx(avbuf)->fd, avbuf->buf.m.offset);
        }

        if (avbuf->plane_info[i].mm_addr == MAP_FAILED)
            return AVERROR(ENOMEM);
    }

    avbuf->status = V4L2BUF_AVAILABLE;

    if (V4L2_TYPE_IS_OUTPUT(ctx->type))
        return 0;

    if (V4L2_TYPE_IS_MULTIPLANAR(ctx->type)) {
        avbuf->buf.m.planes = avbuf->planes;
        avbuf->buf.length = avbuf->num_planes;

    } else {
        avbuf->buf.bytesused = avbuf->planes[0].bytesused;
        avbuf->buf.length = avbuf->planes[0].length;
    }

    return ff_v4l2_buffer_enqueue(avbuf);
}
