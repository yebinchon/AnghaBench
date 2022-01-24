#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  GetByteContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,void*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int*) ; 
 int FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,void*,size_t,int) ; 
 int /*<<< orphan*/  FUNC7 (void*,int /*<<< orphan*/ ,size_t) ; 

__attribute__((used)) static int FUNC8(GetByteContext *gb, void *dstp, size_t op_size)
{
    int pos = FUNC4(gb);
    int flag = FUNC2(gb);

    if ((flag & 3) == 0) {
        FUNC3(gb, 1);
        FUNC0(gb, dstp, op_size);
    } else if ((flag & 3) == 1) {
        FUNC3(gb, 1);
        FUNC7(dstp, FUNC1(gb), op_size);
    } else {
        uint32_t table[256];
        int ret, elements = 0;

        ret = FUNC5(gb, table, &elements);
        if (ret < 0)
            return ret;
        ret = FUNC6(gb, table, dstp, op_size, elements);
        if (ret < 0)
            return ret;
    }
    return FUNC4(gb) - pos;
}