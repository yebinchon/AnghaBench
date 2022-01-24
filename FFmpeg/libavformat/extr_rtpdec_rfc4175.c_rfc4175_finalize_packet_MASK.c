#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_7__ {int stream_index; } ;
struct TYPE_6__ {int /*<<< orphan*/ * frame; int /*<<< orphan*/  frame_size; } ;
typedef  TYPE_1__ PayloadContext ;
typedef  TYPE_2__ AVPacket ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int FUNC1 (TYPE_2__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC2(PayloadContext *data, AVPacket *pkt,
                                   int stream_index)
{
   int ret;

   pkt->stream_index = stream_index;
   ret = FUNC1(pkt, data->frame, data->frame_size);
   if (ret < 0) {
       FUNC0(&data->frame);
   }

   data->frame = NULL;

   return ret;
}