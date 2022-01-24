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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  FLACParseContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static int FUNC3(FLACParseContext *fpc, uint8_t *buf,
                               int buf_size, int search_start)
{
    int size = 0, mod_offset = (buf_size - 1) % 4, i, j;
    uint32_t x;

    for (i = 0; i < mod_offset; i++) {
        if ((FUNC0(buf + i) & 0xFFFE) == 0xFFF8)
            size = FUNC2(fpc, search_start + i);
    }

    for (; i < buf_size - 1; i += 4) {
        x = FUNC1(buf + i);
        if (((x & ~(x + 0x01010101)) & 0x80808080)) {
            for (j = 0; j < 4; j++) {
                if ((FUNC0(buf + i + j) & 0xFFFE) == 0xFFF8)
                    size = FUNC2(fpc, search_start + i + j);
            }
        }
    }
    return size;
}