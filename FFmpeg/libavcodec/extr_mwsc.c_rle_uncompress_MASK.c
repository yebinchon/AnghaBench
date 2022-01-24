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
 int /*<<< orphan*/  SEEK_CUR ; 
 int /*<<< orphan*/  SEEK_SET ; 
 unsigned int FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 unsigned int FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static int FUNC8(GetByteContext *gb, PutByteContext *pb, GetByteContext *gbp,
                          int width, int height, int stride, int pb_linesize, int gbp_linesize)
{
    int intra = 1, w = 0;

    FUNC6(pb, (height - 1) * pb_linesize, SEEK_SET);

    while (FUNC1(gb) > 0) {
        uint32_t fill = FUNC2(gb);
        unsigned run = FUNC0(gb);

        if (run == 0) {
            run = FUNC3(gb);
            for (int j = 0; j < run; j++, w++) {
                if (w == width) {
                    w = 0;
                    FUNC6(pb, -(pb_linesize + stride), SEEK_CUR);
                }
                FUNC4(pb, fill);
            }
        } else if (run == 255) {
            int pos = FUNC7(pb);

            FUNC5(gbp, pos, SEEK_SET);
            for (int j = 0; j < fill; j++, w++) {
                if (w == width) {
                    w = 0;
                    FUNC6(pb, -(pb_linesize + stride), SEEK_CUR);
                    FUNC5(gbp, -(gbp_linesize + stride), SEEK_CUR);
                }
                FUNC4(pb, FUNC2(gbp));
            }

            intra = 0;
        } else {
            for (int j = 0; j < run; j++, w++) {
                if (w == width) {
                    w = 0;
                    FUNC6(pb, -(pb_linesize + stride), SEEK_CUR);
                }
                FUNC4(pb, fill);
            }
        }
    }

    return intra;
}