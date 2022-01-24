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
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_3__ {int /*<<< orphan*/  stride; int /*<<< orphan*/  stream_ptr; scalar_t__ pixel_ptr; } ;
typedef  TYPE_1__ IpvideoContext ;
typedef  int /*<<< orphan*/  AVFrame ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC1(IpvideoContext *s, AVFrame *frame)
{
    int x, y;
    uint16_t pix;
    uint16_t *pixel_ptr = (uint16_t*)s->pixel_ptr;

    /* 1-color encoding: the whole block is 1 solid color */
    pix = FUNC0(&s->stream_ptr);

    for (y = 0; y < 8; y++) {
        for (x = 0; x < 8; x++)
            pixel_ptr[x] = pix;
        pixel_ptr += s->stride;
    }

    /* report success */
    return 0;
}