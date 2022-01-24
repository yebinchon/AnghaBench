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
struct TYPE_5__ {int /*<<< orphan*/ * block; } ;
typedef  TYPE_1__ HQContext ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  int /*<<< orphan*/  AVFrame ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *,int,int,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC4(HQContext *c, AVFrame *pic,
                        GetBitContext *gb, int x, int y)
{
    int qgroup, flag;
    int i, ret;

    qgroup = FUNC0(gb, 4);
    flag = FUNC1(gb);

    for (i = 0; i < 8; i++) {
        ret = FUNC2(c, gb, c->block[i], qgroup, i >= 4, 0);
        if (ret < 0)
            return ret;
    }

    FUNC3(c, pic, 0, x,      y, flag, c->block[0], c->block[2]);
    FUNC3(c, pic, 0, x + 8,  y, flag, c->block[1], c->block[3]);
    FUNC3(c, pic, 2, x >> 1, y, flag, c->block[4], c->block[5]);
    FUNC3(c, pic, 1, x >> 1, y, flag, c->block[6], c->block[7]);

    return 0;
}