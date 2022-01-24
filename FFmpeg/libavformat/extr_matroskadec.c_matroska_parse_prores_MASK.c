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
typedef  int /*<<< orphan*/  MatroskaTrack ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ AV_INPUT_BUFFER_PADDING_SIZE ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC3 (char,char,char,float) ; 
 int /*<<< orphan*/ * FUNC4 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 

__attribute__((used)) static int FUNC7(MatroskaTrack *track, uint8_t *src,
                                 uint8_t **pdst, int *size)
{
    uint8_t *dst = src;
    int dstlen = *size;

    if (FUNC1(&src[4]) != FUNC3('i', 'c', 'p', 'f')) {
        dstlen += 8;

        dst = FUNC4(dstlen + AV_INPUT_BUFFER_PADDING_SIZE);
        if (!dst)
            return FUNC0(ENOMEM);

        FUNC2(dst, dstlen);
        FUNC2(dst + 4, FUNC3('i', 'c', 'p', 'f'));
        FUNC5(dst + 8, src, dstlen - 8);
        FUNC6(dst + dstlen, 0, AV_INPUT_BUFFER_PADDING_SIZE);
    }

    *pdst = dst;
    *size = dstlen;

    return 0;
}