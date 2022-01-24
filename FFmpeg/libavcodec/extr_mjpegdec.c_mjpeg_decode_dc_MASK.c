#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_3__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  table; } ;
struct TYPE_4__ {int /*<<< orphan*/  gb; TYPE_3__** vlcs; int /*<<< orphan*/  avctx; } ;
typedef  TYPE_1__ MJpegDecodeContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int /*<<< orphan*/ ,int,TYPE_3__*) ; 
 int FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static inline int FUNC3(MJpegDecodeContext *s, int dc_index)
{
    int code;
    code = FUNC1(&s->gb, s->vlcs[0][dc_index].table, 9, 2);
    if (code < 0 || code > 16) {
        FUNC0(s->avctx, AV_LOG_WARNING,
               "mjpeg_decode_dc: bad vlc: %d:%d (%p)\n",
               0, dc_index, &s->vlcs[0][dc_index]);
        return 0xfffff;
    }

    if (code)
        return FUNC2(&s->gb, code);
    else
        return 0;
}