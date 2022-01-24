#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_8__ {int /*<<< orphan*/  ctx; } ;
struct TYPE_9__ {TYPE_1__ muxer; } ;
typedef  TYPE_2__ ffmpeg_t ;
struct TYPE_10__ {int /*<<< orphan*/  size; } ;
typedef  TYPE_3__ AVPacket ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,TYPE_3__*,int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(ffmpeg_t *handle)
{
   for (;;)
   {
      AVPacket pkt;
      if (!FUNC1(handle, &pkt, NULL) || !pkt.size ||
            FUNC0(handle->muxer.ctx, &pkt) < 0)
         break;
   }
}