#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_29__   TYPE_9__ ;
typedef  struct TYPE_28__   TYPE_8__ ;
typedef  struct TYPE_27__   TYPE_7__ ;
typedef  struct TYPE_26__   TYPE_6__ ;
typedef  struct TYPE_25__   TYPE_5__ ;
typedef  struct TYPE_24__   TYPE_4__ ;
typedef  struct TYPE_23__   TYPE_3__ ;
typedef  struct TYPE_22__   TYPE_2__ ;
typedef  struct TYPE_21__   TYPE_1__ ;
typedef  struct TYPE_20__   TYPE_15__ ;
typedef  struct TYPE_19__   TYPE_12__ ;
typedef  struct TYPE_18__   TYPE_11__ ;
typedef  struct TYPE_17__   TYPE_10__ ;

/* Type definitions */
struct TYPE_23__ {int /*<<< orphan*/  bytesperline; } ;
struct TYPE_22__ {TYPE_1__* plane_fmt; } ;
struct TYPE_24__ {TYPE_3__ pix; TYPE_2__ pix_mp; } ;
struct TYPE_25__ {TYPE_4__ fmt; } ;
struct TYPE_17__ {int /*<<< orphan*/  type; TYPE_5__ format; } ;
typedef  TYPE_10__ V4L2Context ;
struct TYPE_28__ {TYPE_9__* planes; int /*<<< orphan*/  offset; } ;
struct TYPE_19__ {int index; int length; int /*<<< orphan*/  bytesused; TYPE_8__ m; int /*<<< orphan*/  type; int /*<<< orphan*/  memory; } ;
struct TYPE_18__ {int num_planes; TYPE_9__* planes; TYPE_12__ buf; int /*<<< orphan*/  status; TYPE_7__* plane_info; TYPE_10__* context; } ;
typedef  TYPE_11__ V4L2Buffer ;
struct TYPE_26__ {int /*<<< orphan*/  mem_offset; } ;
struct TYPE_29__ {int length; int /*<<< orphan*/  bytesused; TYPE_6__ m; } ;
struct TYPE_27__ {int length; scalar_t__ mm_addr; int /*<<< orphan*/  bytesperline; } ;
struct TYPE_21__ {int /*<<< orphan*/  bytesperline; } ;
struct TYPE_20__ {int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 scalar_t__ MAP_FAILED ; 
 int /*<<< orphan*/  MAP_SHARED ; 
 int PROT_READ ; 
 int PROT_WRITE ; 
 int /*<<< orphan*/  V4L2BUF_AVAILABLE ; 
 int /*<<< orphan*/  V4L2_MEMORY_MMAP ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ ) ; 
 int VIDEO_MAX_PLANES ; 
 int /*<<< orphan*/  VIDIOC_QUERYBUF ; 
 TYPE_15__* FUNC3 (TYPE_11__*) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC4 (TYPE_11__*) ; 
 int FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_12__*) ; 
 void* FUNC6 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

int FUNC7(V4L2Buffer* avbuf, int index)
{
    V4L2Context *ctx = avbuf->context;
    int ret, i;

    avbuf->buf.memory = V4L2_MEMORY_MMAP;
    avbuf->buf.type = ctx->type;
    avbuf->buf.index = index;

    if (FUNC1(ctx->type)) {
        avbuf->buf.length = VIDEO_MAX_PLANES;
        avbuf->buf.m.planes = avbuf->planes;
    }

    ret = FUNC5(FUNC3(avbuf)->fd, VIDIOC_QUERYBUF, &avbuf->buf);
    if (ret < 0)
        return FUNC0(errno);

    if (FUNC1(ctx->type)) {
        avbuf->num_planes = 0;
        /* in MP, the V4L2 API states that buf.length means num_planes */
        for (i = 0; i < avbuf->buf.length; i++) {
            if (avbuf->buf.m.planes[i].length)
                avbuf->num_planes++;
        }
    } else
        avbuf->num_planes = 1;

    for (i = 0; i < avbuf->num_planes; i++) {

        avbuf->plane_info[i].bytesperline = FUNC1(ctx->type) ?
            ctx->format.fmt.pix_mp.plane_fmt[i].bytesperline :
            ctx->format.fmt.pix.bytesperline;

        if (FUNC1(ctx->type)) {
            avbuf->plane_info[i].length = avbuf->buf.m.planes[i].length;
            avbuf->plane_info[i].mm_addr = FUNC6(NULL, avbuf->buf.m.planes[i].length,
                                           PROT_READ | PROT_WRITE, MAP_SHARED,
                                           FUNC3(avbuf)->fd, avbuf->buf.m.planes[i].m.mem_offset);
        } else {
            avbuf->plane_info[i].length = avbuf->buf.length;
            avbuf->plane_info[i].mm_addr = FUNC6(NULL, avbuf->buf.length,
                                          PROT_READ | PROT_WRITE, MAP_SHARED,
                                          FUNC3(avbuf)->fd, avbuf->buf.m.offset);
        }

        if (avbuf->plane_info[i].mm_addr == MAP_FAILED)
            return FUNC0(ENOMEM);
    }

    avbuf->status = V4L2BUF_AVAILABLE;

    if (FUNC2(ctx->type))
        return 0;

    if (FUNC1(ctx->type)) {
        avbuf->buf.m.planes = avbuf->planes;
        avbuf->buf.length   = avbuf->num_planes;

    } else {
        avbuf->buf.bytesused = avbuf->planes[0].bytesused;
        avbuf->buf.length    = avbuf->planes[0].length;
    }

    return FUNC4(avbuf);
}