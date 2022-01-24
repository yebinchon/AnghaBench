#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int output_channels; int /*<<< orphan*/ * avctx; } ;
typedef  TYPE_1__ SilkContext ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int) ; 
 TYPE_1__* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*) ; 

int FUNC4(AVCodecContext *avctx, SilkContext **ps, int output_channels)
{
    SilkContext *s;

    if (output_channels != 1 && output_channels != 2) {
        FUNC1(avctx, AV_LOG_ERROR, "Invalid number of output channels: %d\n",
               output_channels);
        return FUNC0(EINVAL);
    }

    s = FUNC2(sizeof(*s));
    if (!s)
        return FUNC0(ENOMEM);

    s->avctx           = avctx;
    s->output_channels = output_channels;

    FUNC3(s);

    *ps = s;

    return 0;
}