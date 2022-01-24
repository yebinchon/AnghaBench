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
typedef  int /*<<< orphan*/  PutBitContext ;
typedef  int /*<<< orphan*/  GetBitContext ;

/* Variables and functions */
 int COUNT ; 
 int FUNC0 (int) ; 
 int FUNC1 (int) ; 
 int SIZE ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,int,int,int) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int FUNC7 (int /*<<< orphan*/ *) ; 
 int FUNC8 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int) ; 
 int FUNC14 (int /*<<< orphan*/ *,int) ; 
 int FUNC15 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  stderr ; 

int FUNC16(void)
{
    int i, ret = 0;
    uint8_t *temp;
    PutBitContext pb;
    GetBitContext gb;

    temp = FUNC3(SIZE);
    if (!temp)
        return 2;

    FUNC10(&pb, temp, SIZE);
    for (i = 0; i < COUNT; i++)
        FUNC12(&pb, i);
    FUNC4(&pb);

    FUNC9(&gb, temp, 8 * SIZE);
    for (i = 0; i < COUNT; i++) {
        int j, s = FUNC14(&gb, 25);

        j = FUNC7(&gb);
        if (j != i) {
            FUNC5(stderr, "get_ue_golomb: expected %d, got %d. bits: %7x\n",
                    i, j, s);
            ret = 1;
        }
    }

#define EXTEND(i) ((i) << 3 | (i) & 7)
    FUNC10(&pb, temp, SIZE);
    for (i = 0; i < COUNT; i++)
        FUNC12(&pb, EXTEND(i));
    FUNC4(&pb);

    FUNC9(&gb, temp, 8 * SIZE);
    for (i = 0; i < COUNT; i++) {
        int j, s = FUNC15(&gb, 32);

        j = FUNC8(&gb);
        if (j != EXTEND(i)) {
            FUNC5(stderr, "get_ue_golomb_long: expected %d, got %d. "
                    "bits: %8x\n", EXTEND(i), j, s);
            ret = 1;
        }
    }

#define EXTEND_L(i) ((i) << 4 | (i) & 15)
    FUNC10(&pb, temp, SIZE);
    for (i = 0; i < COUNT; i++)
        FUNC13(&pb, EXTEND_L(i));
    FUNC4(&pb);

    FUNC9(&gb, temp, 8 * SIZE);
    for (i = 0; i < COUNT; i++) {
        int j, s = FUNC15(&gb, 32);

        j = FUNC8(&gb);
        if (j != EXTEND_L(i)) {
            FUNC5(stderr, "get_ue_golomb_long: expected %d, got %d. "
                    "bits: %8x\n", EXTEND_L(i), j, s);
            ret = 1;
        }
    }

    FUNC10(&pb, temp, SIZE);
    for (i = 0; i < COUNT; i++)
        FUNC11(&pb, i - COUNT / 2);
    FUNC4(&pb);

    FUNC9(&gb, temp, 8 * SIZE);
    for (i = 0; i < COUNT; i++) {
        int j, s = FUNC14(&gb, 25);

        j = FUNC6(&gb);
        if (j != i - COUNT / 2) {
            FUNC5(stderr, "get_se_golomb: expected %d, got %d. bits: %7x\n",
                    i - COUNT / 2, j, s);
            ret = 1;
        }
    }

    FUNC2(temp);

    return ret;
}