#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int flushing; int /*<<< orphan*/  refcount; int /*<<< orphan*/  surface; } ;
typedef  TYPE_1__ MediaCodecDecContext ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *,TYPE_1__*) ; 

int FUNC2(AVCodecContext *avctx, MediaCodecDecContext *s)
{
    if (!s->surface || FUNC0(&s->refcount) == 1) {
        int ret;

        /* No frames (holding a reference to the codec) are retained by the
         * user, thus we can flush the codec and returns accordingly */
        if ((ret = FUNC1(avctx, s)) < 0) {
            return ret;
        }

        return 1;
    }

    s->flushing = 1;
    return 0;
}