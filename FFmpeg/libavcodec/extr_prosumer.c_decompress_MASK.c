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
typedef  int uint32_t ;
typedef  int /*<<< orphan*/  PutByteContext ;
typedef  int /*<<< orphan*/  GetByteContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  FUNC0 (int*,int /*<<< orphan*/ ) ; 
 int FUNC1 (int,int) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC4 (int /*<<< orphan*/ *) ; 
 int FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int) ; 
 int FUNC11 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC12(GetByteContext *gb, int size, PutByteContext *pb, const uint32_t *lut)
{
    int pos, idx, cnt, fill;
    uint32_t a, b, c;

    FUNC10(gb, 32);
    cnt = 4;
    a = FUNC5(gb);
    idx = a >> 20;
    b = lut[2 * idx];

    while (1) {
        if (FUNC3(pb) <= 0 || FUNC4(pb))
            return 0;
        if ((b & 0xFF00u) != 0x8000u || (b & 0xFFu)) {
            if ((b & 0xFF00u) != 0x8000u) {
                FUNC7(pb, b);
            } else {
                idx = 0;
                for (int i = 0; i < (b & 0xFFu); i++)
                    FUNC8(pb, 0);
            }
            c = b >> 16;
            if (c & 0xFF00u) {
                fill = lut[2 * idx + 1];
                if ((c & 0xF000u) == 0x1000) {
                    FUNC7(pb, fill);
                } else {
                    FUNC8(pb, fill);
                }
                c = (c >> 8) & 0x0Fu;
            }
            while (c) {
                a <<= 4;
                cnt--;
                if (!cnt) {
                    if (FUNC2(gb) <= 0) {
                        if (!a)
                            return 0;
                    } else {
                        pos = FUNC11(gb);
                        FUNC9(gb, pos ^ 2, SEEK_SET);
                        FUNC0(&a, FUNC6(gb));
                        FUNC9(gb, pos + 2, SEEK_SET);
                    }
                    cnt = 4;
                }
                c--;
            }
            idx = a >> 20;
            b = lut[2 * idx];
            if (!b)
                return AVERROR_INVALIDDATA;
            continue;
        }
        idx = 2;
        while (idx) {
            a <<= 4;
            cnt--;
            if (cnt) {
                idx--;
                continue;
            }
            if (FUNC2(gb) <= 0) {
                if (a) {
                    cnt = 4;
                    idx--;
                    continue;
                }
                return 0;
            }
            pos = FUNC11(gb);
            FUNC9(gb, pos ^ 2, SEEK_SET);
            FUNC0(&a, FUNC6(gb));
            FUNC9(gb, pos + 2, SEEK_SET);
            cnt = 4;
            idx--;
        }
        b = FUNC1(4, a) >> 16;
    }

    return 0;
}