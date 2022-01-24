#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct TYPE_4__ {int /*<<< orphan*/  member_0; } ;
typedef  TYPE_1__ NLMeansDSPContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC1 (int const,int const) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,int /*<<< orphan*/ *,int const,int const*,int const,int,int,int const,int const,int const) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int const,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int const*,int const,int,int,int const,int const,int const,int const,int const) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int const,int const,int const) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int const) ; 
 int /*<<< orphan*/  FUNC7 (char*,...) ; 

int FUNC8(void)
{
    int ret = 0, xoff, yoff;
    uint32_t *ii_start;
    uint32_t *ii_start2;
    NLMeansDSPContext dsp = {0};

    // arbitrary test source of size 6x5 and linesize=8
    const int w = 6, h = 5, lz = 8;
    static const uint8_t src[] = {
        0xb0, 0x71, 0xfb, 0xd8, 0x01, 0xd9, /***/ 0x01, 0x02,
        0x51, 0x8e, 0x41, 0x0f, 0x84, 0x58, /***/ 0x03, 0x04,
        0xc7, 0x8d, 0x07, 0x70, 0x5c, 0x47, /***/ 0x05, 0x06,
        0x09, 0x4e, 0xfc, 0x74, 0x8f, 0x9a, /***/ 0x07, 0x08,
        0x60, 0x8e, 0x20, 0xaa, 0x95, 0x7d, /***/ 0x09, 0x0a,
    };

    const int e = 3;
    const int ii_w = w+e*2, ii_h = h+e*2;

    // align to 4 the linesize, "+1" is for the space of the left 0-column
    const int ii_lz_32 = ((ii_w + 1) + 3) & ~3;

    // "+1" is for the space of the top 0-line
    uint32_t *ii  = FUNC1(ii_h + 1, ii_lz_32 * sizeof(*ii));
    uint32_t *ii2 = FUNC1(ii_h + 1, ii_lz_32 * sizeof(*ii2));

    if (!ii || !ii2)
        return -1;

    ii_start  = ii  + ii_lz_32 + 1; // skip top 0-line and left 0-column
    ii_start2 = ii2 + ii_lz_32 + 1; // skip top 0-line and left 0-column

    FUNC5(&dsp);

    for (yoff = -e; yoff <= e; yoff++) {
        for (xoff = -e; xoff <= e; xoff++) {
            FUNC7("xoff=%d yoff=%d\n", xoff, yoff);

            FUNC2(&dsp, ii_start, ii_lz_32,
                                       src, lz, xoff, yoff, e, w, h);
            FUNC4(ii_start, ii_w, ii_h, ii_lz_32);

            FUNC3(ii_start2, ii_lz_32,
                                              0, 0,
                                              src, lz,
                                              xoff, yoff, e, w, h,
                                              ii_w, ii_h);
            FUNC4(ii_start2, ii_w, ii_h, ii_lz_32);

            if (FUNC6(ii, ii2, (ii_h+1) * ii_lz_32 * sizeof(*ii))) {
                FUNC7("Integral mismatch\n");
                ret = 1;
                goto end;
            }
        }
    }

end:
    FUNC0(&ii);
    FUNC0(&ii2);
    return ret;
}