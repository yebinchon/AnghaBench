#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  table; } ;
struct TYPE_7__ {int** block; TYPE_1__ hqa_cbp_vlc; } ;
typedef  TYPE_2__ HQContext ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  int /*<<< orphan*/  AVFrame ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int,int) ; 
 int FUNC3 (TYPE_2__*,int /*<<< orphan*/ *,int*,int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_2__*,int /*<<< orphan*/ *,int,int,int,int,int*,int*) ; 

__attribute__((used)) static int FUNC6(HQContext *c, AVFrame *pic, int qgroup,
                         GetBitContext *gb, int x, int y)
{
    int flag = 0;
    int i, ret, cbp;

    if (FUNC1(gb) < 1)
        return AVERROR_INVALIDDATA;

    cbp = FUNC2(gb, c->hqa_cbp_vlc.table, 5, 1);

    for (i = 0; i < 12; i++)
        FUNC4(c->block[i], 0, sizeof(*c->block));
    for (i = 0; i < 12; i++)
        c->block[i][0] = -128 * (1 << 6);

    if (cbp) {
        flag = FUNC0(gb);

        cbp |= cbp << 4;
        if (cbp & 0x3)
            cbp |= 0x500;
        if (cbp & 0xC)
            cbp |= 0xA00;
        for (i = 0; i < 12; i++) {
            if (!(cbp & (1 << i)))
                continue;
            ret = FUNC3(c, gb, c->block[i], qgroup, i >= 8, 1);
            if (ret < 0)
                return ret;
        }
    }

    FUNC5(c, pic, 3, x,      y, flag, c->block[ 0], c->block[ 2]);
    FUNC5(c, pic, 3, x + 8,  y, flag, c->block[ 1], c->block[ 3]);
    FUNC5(c, pic, 0, x,      y, flag, c->block[ 4], c->block[ 6]);
    FUNC5(c, pic, 0, x + 8,  y, flag, c->block[ 5], c->block[ 7]);
    FUNC5(c, pic, 2, x >> 1, y, flag, c->block[ 8], c->block[ 9]);
    FUNC5(c, pic, 1, x >> 1, y, flag, c->block[10], c->block[11]);

    return 0;
}