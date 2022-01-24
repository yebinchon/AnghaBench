#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct SwsContext {int dummy; } ;
struct TYPE_9__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_8__ {int /*<<< orphan*/  linesize; scalar_t__ data; } ;
typedef  int /*<<< orphan*/  AVPacket ;
typedef  TYPE_1__ AVFrame ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (int /*<<< orphan*/ ,TYPE_1__*,int*,int /*<<< orphan*/ *) ; 
 TYPE_2__ media ; 
 int /*<<< orphan*/  FUNC3 (struct SwsContext*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (struct SwsContext*,int /*<<< orphan*/  const* const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  vctx ; 

__attribute__((used)) static bool FUNC5(AVPacket *pkt, AVFrame *frame,
      AVFrame *conv, struct SwsContext *sws)
{
   int got_ptr = 0;
   int ret     = FUNC2(vctx, frame, &got_ptr, pkt);

   if (ret < 0)
      return false;

   if (got_ptr)
   {
      FUNC3(sws, media.width, media.height,
            FUNC1(frame), FUNC0(frame));
      FUNC4(sws, (const uint8_t * const*)frame->data,
            frame->linesize, 0, media.height,
            conv->data, conv->linesize);
      return true;
   }

   return false;
}