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
struct TYPE_3__ {scalar_t__ stride; int /*<<< orphan*/  pixel_ptr; int /*<<< orphan*/  stream_ptr; } ;
typedef  TYPE_1__ IpvideoContext ;
typedef  int /*<<< orphan*/  AVFrame ;

/* Variables and functions */
 unsigned char FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,unsigned char,int) ; 

__attribute__((used)) static int FUNC2(IpvideoContext *s, AVFrame *frame)
{
    int y;
    unsigned char pix;

    /* 1-color encoding: the whole block is 1 solid color */
    pix = FUNC0(&s->stream_ptr);

    for (y = 0; y < 8; y++) {
        FUNC1(s->pixel_ptr, pix, 8);
        s->pixel_ptr += s->stride;
    }

    /* report success */
    return 0;
}