#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_2__ ;
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct scaler_ctx {int dummy; } ;
struct TYPE_4__ {size_t n_buffers; int /*<<< orphan*/  fd; TYPE_1__* buffers; int /*<<< orphan*/  buffer_output; struct scaler_ctx scaler; } ;
typedef  TYPE_2__ video4linux_t ;
typedef  int /*<<< orphan*/  uint8_t ;
struct v4l2_buffer {size_t index; int /*<<< orphan*/  memory; int /*<<< orphan*/  type; int /*<<< orphan*/  member_0; } ;
struct TYPE_3__ {scalar_t__ start; } ;

/* Variables and functions */
#define  EAGAIN 128 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  V4L2_BUF_TYPE_VIDEO_CAPTURE ; 
 int /*<<< orphan*/  V4L2_MEMORY_MMAP ; 
 int /*<<< orphan*/  VIDIOC_DQBUF ; 
 int /*<<< orphan*/  VIDIOC_QBUF ; 
 int errno ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (struct scaler_ctx*,int /*<<< orphan*/ ,int /*<<< orphan*/  const*) ; 
 int FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,struct v4l2_buffer*) ; 

__attribute__((used)) static bool FUNC4(void *data)
{
   struct scaler_ctx *ctx = NULL;
   video4linux_t     *v4l = (video4linux_t*)data;
   struct v4l2_buffer buf = {0};

   buf.type   = V4L2_BUF_TYPE_VIDEO_CAPTURE;
   buf.memory = V4L2_MEMORY_MMAP;

   if (FUNC3(v4l->fd, VIDIOC_DQBUF, &buf) == -1)
   {
      switch (errno)
      {
         case EAGAIN:
            break;
         default:
            FUNC0("[V4L2]: VIDIOC_DQBUF.\n");
            break;
      }

      return false;
   }

   FUNC1(buf.index < v4l->n_buffers);

   ctx = &v4l->scaler;

   FUNC2(ctx, v4l->buffer_output, (const uint8_t*)v4l->buffers[buf.index].start);

   if (FUNC3(v4l->fd, VIDIOC_QBUF, &buf) == -1)
      FUNC0("[V4L2]: VIDIOC_QBUF\n");

   return true;
}