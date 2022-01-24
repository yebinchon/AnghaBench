#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  unsigned int uint8_t ;
typedef  int /*<<< orphan*/  WriterContext ;
struct TYPE_6__ {int /*<<< orphan*/  str; } ;
typedef  TYPE_1__ AVBPrint ;

/* Variables and functions */
 int /*<<< orphan*/  AV_BPRINT_SIZE_UNLIMITED ; 
 int FUNC0 (int,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,unsigned int,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,...) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6(WriterContext *wctx, const char *name,
                              uint8_t *data, int size)
{
    AVBPrint bp;
    int offset = 0, l, i;

    FUNC3(&bp, 0, AV_BPRINT_SIZE_UNLIMITED);
    FUNC4(&bp, "\n");
    while (size) {
        FUNC4(&bp, "%08x: ", offset);
        l = FUNC0(size, 16);
        for (i = 0; i < l; i++) {
            FUNC4(&bp, "%02x", data[i]);
            if (i & 1)
                FUNC4(&bp, " ");
        }
        FUNC1(&bp, ' ', 41 - 2 * i - i / 2);
        for (i = 0; i < l; i++)
            FUNC1(&bp, data[i] - 32U < 95 ? data[i] : '.', 1);
        FUNC4(&bp, "\n");
        offset += l;
        data   += l;
        size   -= l;
    }
    FUNC5(wctx, name, bp.str, 0);
    FUNC2(&bp, NULL);
}