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
typedef  int /*<<< orphan*/  uint32_t ;

/* Variables and functions */
 int H1 ; 
 int H2 ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int W1 ; 
 int W2 ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC7 (char*,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *,int,int,int) ; 
 int FUNC8 (char*,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC9(void)
{
    int i, align, ret;
    uint8_t *buf1 = FUNC3(W1*H1);
    uint8_t *buf2 = FUNC3(W2*H2);
    uint32_t state = 0;

    if (!buf1 || !buf2) {
        FUNC5(stderr, "malloc failure\n");
        ret = 1;
        goto end;
    }

    FUNC4();

#define RANDOM_INIT(buf, size) do {             \
    int k;                                      \
    for (k = 0; k < size; k++) {                \
        state = state * 1664525 + 1013904223;   \
        buf[k] = state>>24;                     \
    }                                           \
} while (0)

    /* Normal test with different strides */
    RANDOM_INIT(buf1, W1*H1);
    RANDOM_INIT(buf2, W2*H2);
    ret = FUNC8("random", buf1, buf2);
    if (ret < 0)
        goto end;

    /* Check for maximum SAD */
    FUNC6(buf1, 0xff, W1*H1);
    FUNC6(buf2, 0x00, W2*H2);
    ret = FUNC8("max", buf1, buf2);
    if (ret < 0)
        goto end;

    /* Check for minimum SAD */
    FUNC6(buf1, 0x90, W1*H1);
    FUNC6(buf2, 0x90, W2*H2);
    ret = FUNC8("min", buf1, buf2);
    if (ret < 0)
        goto end;

    /* Exact buffer sizes, to check for overreads */
    for (i = 1; i <= 5; i++) {
        for (align = 0; align < 3; align++) {
            int size1, size2;

            FUNC2(&buf1);
            FUNC2(&buf2);

            size1 = size2 = 1 << (i << 1);

            switch (align) {
            case 0: size1++; size2++; break;
            case 1:          size2++; break;
            case 2:                   break;
            }

            buf1 = FUNC3(size1);
            buf2 = FUNC3(size2);
            if (!buf1 || !buf2) {
                FUNC5(stderr, "malloc failure\n");
                ret = 1;
                goto end;
            }
            RANDOM_INIT(buf1, size1);
            RANDOM_INIT(buf2, size2);
            ret = FUNC7("small", buf1, 1<<i, buf2, 1<<i, align, i);
            if (ret < 0)
                goto end;
        }
    }

end:
    FUNC1(buf1);
    FUNC1(buf2);
    return ret;
}