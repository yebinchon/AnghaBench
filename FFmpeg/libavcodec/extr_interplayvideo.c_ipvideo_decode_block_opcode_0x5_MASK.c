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
struct TYPE_4__ {int /*<<< orphan*/  last_frame; int /*<<< orphan*/  avctx; int /*<<< orphan*/  stream_ptr; } ;
typedef  TYPE_1__ IpvideoContext ;
typedef  int /*<<< orphan*/  AVFrame ;

/* Variables and functions */
 char FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ *,char,char) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,char*,char,char) ; 

__attribute__((used)) static int FUNC3(IpvideoContext *s, AVFrame *frame)
{
    signed char x, y;

    /* copy a block from the previous frame using an expanded range;
     * need 2 more bytes */
    x = FUNC0(&s->stream_ptr);
    y = FUNC0(&s->stream_ptr);

    FUNC2(s->avctx, "motion bytes = %d, %d\n", x, y);
    return FUNC1(s, s->last_frame, frame, x, y);
}