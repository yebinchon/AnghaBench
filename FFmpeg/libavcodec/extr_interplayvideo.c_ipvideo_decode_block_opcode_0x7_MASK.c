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
struct TYPE_3__ {unsigned char* pixel_ptr; int stride; int /*<<< orphan*/  stream_ptr; int /*<<< orphan*/  line_inc; int /*<<< orphan*/  avctx; } ;
typedef  TYPE_1__ IpvideoContext ;
typedef  int /*<<< orphan*/  AVFrame ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC4(IpvideoContext *s, AVFrame *frame)
{
    int x, y;
    unsigned char P[2];
    unsigned int flags;

    if (FUNC2(&s->stream_ptr) < 4) {
        FUNC0(s->avctx, AV_LOG_ERROR, "too little data for opcode 0x7\n");
        return AVERROR_INVALIDDATA;
    }

    /* 2-color encoding */
    P[0] = FUNC1(&s->stream_ptr);
    P[1] = FUNC1(&s->stream_ptr);

    if (P[0] <= P[1]) {

        /* need 8 more bytes from the stream */
        for (y = 0; y < 8; y++) {
            flags = FUNC1(&s->stream_ptr) | 0x100;
            for (; flags != 1; flags >>= 1)
                *s->pixel_ptr++ = P[flags & 1];
            s->pixel_ptr += s->line_inc;
        }

    } else {

        /* need 2 more bytes from the stream */
        flags = FUNC3(&s->stream_ptr);
        for (y = 0; y < 8; y += 2) {
            for (x = 0; x < 8; x += 2, flags >>= 1) {
                s->pixel_ptr[x                ] =
                s->pixel_ptr[x + 1            ] =
                s->pixel_ptr[x +     s->stride] =
                s->pixel_ptr[x + 1 + s->stride] = P[flags & 1];
            }
            s->pixel_ptr += s->stride * 2;
        }
    }

    /* report success */
    return 0;
}