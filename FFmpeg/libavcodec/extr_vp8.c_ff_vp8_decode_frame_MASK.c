#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  AVPacket ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  IS_VP8 ; 
 int FUNC0 (int /*<<< orphan*/ *,void*,int*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC1(AVCodecContext *avctx, void *data, int *got_frame,
                        AVPacket *avpkt)
{
    return FUNC0(avctx, data, got_frame, avpkt, IS_VP8);
}