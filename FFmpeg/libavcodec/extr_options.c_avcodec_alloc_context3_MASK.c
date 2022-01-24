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
typedef  int /*<<< orphan*/  AVCodecContext ;
typedef  int /*<<< orphan*/  AVCodec ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (int) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/  const*) ; 

AVCodecContext *FUNC3(const AVCodec *codec)
{
    AVCodecContext *avctx= FUNC1(sizeof(AVCodecContext));

    if (!avctx)
        return NULL;

    if (FUNC2(avctx, codec) < 0) {
        FUNC0(avctx);
        return NULL;
    }

    return avctx;
}