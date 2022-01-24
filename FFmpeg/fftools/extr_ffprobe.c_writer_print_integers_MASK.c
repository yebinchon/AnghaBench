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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  WriterContext ;
struct TYPE_5__ {int /*<<< orphan*/  str; } ;
typedef  TYPE_1__ AVBPrint ;

/* Variables and functions */
 int /*<<< orphan*/  AV_BPRINT_SIZE_UNLIMITED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int,int) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char const*,...) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC7(WriterContext *wctx, const char *name,
                                  uint8_t *data, int size, const char *format,
                                  int columns, int bytes, int offset_add)
{
    AVBPrint bp;
    int offset = 0, l, i;

    FUNC4(&bp, 0, AV_BPRINT_SIZE_UNLIMITED);
    FUNC5(&bp, "\n");
    while (size) {
        FUNC5(&bp, "%08x: ", offset);
        l = FUNC2(size, columns);
        for (i = 0; i < l; i++) {
            if      (bytes == 1) FUNC5(&bp, format, *data);
            else if (bytes == 2) FUNC5(&bp, format, FUNC0(data));
            else if (bytes == 4) FUNC5(&bp, format, FUNC1(data));
            data += bytes;
            size --;
        }
        FUNC5(&bp, "\n");
        offset += offset_add;
    }
    FUNC6(wctx, name, bp.str, 0);
    FUNC3(&bp, NULL);
}