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
struct TYPE_6__ {scalar_t__ buffer_start; scalar_t__ buffer_end; } ;
typedef  TYPE_1__ PutByteContext ;
typedef  int /*<<< orphan*/  GetByteContext ;

/* Variables and functions */
 int /*<<< orphan*/  SEEK_SET ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,int) ; 
 int /*<<< orphan*/  FUNC6 (TYPE_1__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (TYPE_1__*) ; 

__attribute__((used)) static int FUNC11(GetByteContext *gb, PutByteContext *pb)
{
    unsigned opcode = 0, len;
    int high = 0;
    int i, pos;

    while (FUNC1(gb) > 0) {
        GetByteContext gbc;

        while (FUNC1(gb) > 0) {
            while (FUNC1(gb) > 0) {
                opcode = FUNC0(gb);
                high = opcode >= 0x20;
                if (high)
                    break;
                if (opcode)
                    break;
                opcode = FUNC0(gb);
                if (opcode < 0xF8) {
                    opcode += 32;
                    break;
                }
                i = opcode - 0xF8;
                if (i) {
                    len = 256;
                    do {
                        len *= 2;
                        --i;
                    } while (i);
                } else {
                    len = 280;
                }
                do {
                    FUNC6(pb, FUNC2(gb));
                    FUNC6(pb, FUNC2(gb));
                    len -= 8;
                } while (len && FUNC1(gb) > 0);
            }

            if (!high) {
                do {
                    FUNC5(pb, FUNC0(gb));
                    --opcode;
                } while (opcode && FUNC1(gb) > 0);

                while (FUNC1(gb) > 0) {
                    GetByteContext gbc;

                    opcode = FUNC0(gb);
                    if (opcode >= 0x20)
                        break;
                    FUNC3(&gbc, pb->buffer_start, pb->buffer_end - pb->buffer_start);

                    pos = -(opcode | 32 * FUNC0(gb)) - 1;
                    FUNC7(&gbc, FUNC10(pb) + pos, SEEK_SET);
                    FUNC5(pb, FUNC0(&gbc));
                    FUNC5(pb, FUNC0(&gbc));
                    FUNC5(pb, FUNC0(&gbc));
                    FUNC5(pb, FUNC0(gb));
                }
            }
            high = 0;
            if (opcode < 0x40)
                break;
            FUNC3(&gbc, pb->buffer_start, pb->buffer_end - pb->buffer_start);
            pos = (-((opcode & 0x1F) | 32 * FUNC0(gb)) - 1);
            FUNC7(&gbc, FUNC10(pb) + pos, SEEK_SET);
            FUNC5(pb, FUNC0(&gbc));
            FUNC5(pb, FUNC0(&gbc));
            len = (opcode >> 5) - 1;
            do {
                FUNC5(pb, FUNC0(&gbc));
                --len;
            } while (len && FUNC1(&gbc) > 0);
        }
        len = opcode & 0x1F;
        if (!len) {
            if (!FUNC4(gb)) {
                do {
                    FUNC8(gb, 1);
                    len += 255;
                } while (!FUNC4(gb) && FUNC1(gb) > 0);
            }
            len += FUNC0(gb) + 31;
        }
        pos = -FUNC0(gb);
        FUNC3(&gbc, pb->buffer_start, pb->buffer_end - pb->buffer_start);
        FUNC7(&gbc, FUNC10(pb) + pos - (FUNC0(gb) << 8), SEEK_SET);
        if (FUNC10(pb) == FUNC9(&gbc))
            break;
        if (len < 5 || FUNC10(pb) - FUNC9(&gbc) < 4) {
            FUNC5(pb, FUNC0(&gbc));
            FUNC5(pb, FUNC0(&gbc));
            FUNC5(pb, FUNC0(&gbc));
        } else {
            FUNC6(pb, FUNC2(&gbc));
            len--;
        }
        do {
            FUNC5(pb, FUNC0(&gbc));
            len--;
        } while (len && FUNC1(&gbc) > 0);
    }

    return 0;
}