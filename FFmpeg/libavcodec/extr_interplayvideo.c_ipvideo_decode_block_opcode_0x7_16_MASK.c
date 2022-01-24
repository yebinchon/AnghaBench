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
typedef  int uint16_t ;
struct TYPE_3__ {int stride; int /*<<< orphan*/  stream_ptr; int /*<<< orphan*/  line_inc; scalar_t__ pixel_ptr; } ;
typedef  TYPE_1__ IpvideoContext ;
typedef  int /*<<< orphan*/  AVFrame ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 void* FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC2(IpvideoContext *s, AVFrame *frame)
{
    int x, y;
    uint16_t P[2];
    unsigned int flags;
    uint16_t *pixel_ptr = (uint16_t*)s->pixel_ptr;

    /* 2-color encoding */
    P[0] = FUNC1(&s->stream_ptr);
    P[1] = FUNC1(&s->stream_ptr);

    if (!(P[0] & 0x8000)) {

        for (y = 0; y < 8; y++) {
            flags = FUNC0(&s->stream_ptr) | 0x100;
            for (; flags != 1; flags >>= 1)
                *pixel_ptr++ = P[flags & 1];
            pixel_ptr += s->line_inc;
        }

    } else {

        flags = FUNC1(&s->stream_ptr);
        for (y = 0; y < 8; y += 2) {
            for (x = 0; x < 8; x += 2, flags >>= 1) {
                pixel_ptr[x                ] =
                pixel_ptr[x + 1            ] =
                pixel_ptr[x +     s->stride] =
                pixel_ptr[x + 1 + s->stride] = P[flags & 1];
            }
            pixel_ptr += s->stride * 2;
        }
    }

    return 0;
}