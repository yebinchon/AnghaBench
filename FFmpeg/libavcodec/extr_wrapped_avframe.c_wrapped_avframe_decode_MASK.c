#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int flags; int size; scalar_t__ data; } ;
typedef  TYPE_1__ AVPacket ;
typedef  int /*<<< orphan*/  AVFrame ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int AV_PKT_FLAG_TRUSTED ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  EPERM ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC5(AVCodecContext *avctx, void *data,
                                  int *got_frame, AVPacket *pkt)
{
    AVFrame *in, *out;
    int err;

    if (!(pkt->flags & AV_PKT_FLAG_TRUSTED)) {
        // This decoder is not usable with untrusted input.
        return FUNC0(EPERM);
    }

    if (pkt->size < sizeof(AVFrame))
        return FUNC0(EINVAL);

    in  = (AVFrame*)pkt->data;
    out = data;

    err = FUNC4(avctx, out);
    if (err < 0)
        return err;

    FUNC1(out, in);

    err = FUNC3(out);
    if (err < 0) {
        FUNC2(out);
        return err;
    }

    *got_frame = 1;
    return 0;
}