#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_5__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
struct v4l2_requestbuffers {int /*<<< orphan*/  count; int /*<<< orphan*/  type; int /*<<< orphan*/  memory; } ;
struct V4L2Plane_info {scalar_t__ length; scalar_t__ mm_addr; } ;
struct TYPE_7__ {int num_buffers; int /*<<< orphan*/  name; TYPE_2__* buffers; int /*<<< orphan*/  type; } ;
typedef  TYPE_1__ V4L2Context ;
struct TYPE_8__ {int num_planes; struct V4L2Plane_info* plane_info; } ;
typedef  TYPE_2__ V4L2Buffer ;
struct TYPE_9__ {int /*<<< orphan*/  fd; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  V4L2_MEMORY_MMAP ; 
 int /*<<< orphan*/  VIDIOC_REQBUFS ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_5__* FUNC3 (TYPE_1__*) ; 
 int /*<<< orphan*/  errno ; 
 int FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_requestbuffers*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (scalar_t__,scalar_t__) ; 

__attribute__((used)) static int FUNC7(V4L2Context* ctx)
{
    struct v4l2_requestbuffers req = {
        .memory = V4L2_MEMORY_MMAP,
        .type = ctx->type,
        .count = 0, /* 0 -> unmaps buffers from the driver */
    };
    int i, j;

    for (i = 0; i < ctx->num_buffers; i++) {
        V4L2Buffer *buffer = &ctx->buffers[i];

        for (j = 0; j < buffer->num_planes; j++) {
            struct V4L2Plane_info *p = &buffer->plane_info[j];
            if (p->mm_addr && p->length)
                if (FUNC6(p->mm_addr, p->length) < 0)
                    FUNC2(FUNC5(ctx), AV_LOG_ERROR, "%s unmap plane (%s))\n", ctx->name, FUNC1(FUNC0(errno)));
        }
    }

    return FUNC4(FUNC3(ctx)->fd, VIDIOC_REQBUFS, &req);
}