#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  uint8_t ;
struct TYPE_8__ {int format; TYPE_1__* avctx; } ;
struct TYPE_7__ {int height; } ;
typedef  TYPE_2__ CDXLVideoContext ;

/* Variables and functions */
#define  BIT_LINE 130 
#define  BIT_PLANAR 129 
#define  CHUNKY 128 
 int /*<<< orphan*/  FUNC0 (TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC4(CDXLVideoContext *c, int linesize, uint8_t *out)
{
    FUNC3(out, 0, linesize * c->avctx->height);

    switch (c->format) {
    case BIT_PLANAR:
        FUNC1(c, linesize, out);
        break;
    case BIT_LINE:
        FUNC0(c, linesize, out);
        break;
    case CHUNKY:
        FUNC2(c, linesize, out);
        break;
    }
}