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
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  GetByteContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int*,int,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int*,int) ; 
 int FUNC3 (int /*<<< orphan*/ *) ; 
 int FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int const*,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC7(uint8_t *dest, int dest_len,
                       const uint8_t *src, int src_len)
{
    uint8_t opcode;
    int size;
    uint8_t *dest_org = dest;
    uint8_t *dest_end = dest + dest_len;
    GetByteContext ctx;

    FUNC5(&ctx, src, src_len);
    while (dest < dest_end && FUNC4(&ctx)) {
        opcode = FUNC3(&ctx);

        if (opcode < 0xe0) {
            int size2, back;
            if ((opcode & 0x80) == 0) {
                size = opcode & 3;

                back  = ((opcode & 0x60) << 3) + FUNC3(&ctx) + 1;
                size2 = ((opcode & 0x1c) >> 2) + 3;
            } else if ((opcode & 0x40) == 0) {
                size = FUNC6(&ctx) >> 6;

                back  = (FUNC1(&ctx) & 0x3fff) + 1;
                size2 = (opcode & 0x3f) + 4;
            } else {
                size = opcode & 3;

                back  = ((opcode & 0x10) << 12) + FUNC1(&ctx) + 1;
                size2 = ((opcode & 0x0c) <<  6) + FUNC3(&ctx) + 5;
            }

            if (dest_end - dest < size + size2 ||
                dest + size - dest_org < back ||
                FUNC4(&ctx) < size)
                return;
            FUNC2(&ctx, dest, size);
            dest += size;
            FUNC0(dest, back, size2);
            dest += size2;
        } else {
            int finish = opcode >= 0xfc;
            size = finish ? opcode & 3 : ((opcode & 0x1f) << 2) + 4;

            if (dest_end - dest < size || FUNC4(&ctx) < size)
                return;
            FUNC2(&ctx, dest, size);
            dest += size;
            if (finish)
                return;
        }
    }
}