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
typedef  int /*<<< orphan*/  PutBitContext ;
typedef  int /*<<< orphan*/  CodedBitstreamContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int const*) ; 
 int /*<<< orphan*/  ENOSPC ; 
 int const FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int const) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int const*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int const) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 size_t FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static int FUNC13(CodedBitstreamContext *ctx,
                                      PutBitContext *pbc, const uint8_t *data,
                                      size_t data_size, int data_bit_start)
{
    size_t rest  = data_size - (data_bit_start + 7) / 8;
    const uint8_t *pos = data + data_bit_start / 8;

    FUNC3(data_bit_start >= 0 &&
               8 * data_size > data_bit_start);

    if (data_size * 8 + 8 > FUNC10(pbc))
        return FUNC0(ENOSPC);

    if (!rest)
        goto rbsp_stop_one_bit;

    // First copy the remaining bits of the first byte
    // The above check ensures that we do not accidentally
    // copy beyond the rbsp_stop_one_bit.
    if (data_bit_start % 8)
        FUNC7(pbc, 8 - data_bit_start % 8,
                 *pos++ & FUNC2(8 - data_bit_start % 8));

    if (FUNC9(pbc) % 8 == 0) {
        // If the writer is aligned at this point,
        // memcpy can be used to improve performance.
        // This happens normally for CABAC.
        FUNC5(pbc);
        FUNC6(FUNC11(pbc), pos, rest);
        FUNC12(pbc, rest);
    } else {
        // If not, we have to copy manually.
        // rbsp_stop_one_bit forces us to special-case
        // the last byte.
        uint8_t temp;
        int i;

        for (; rest > 4; rest -= 4, pos += 4)
            FUNC8(pbc, FUNC1(pos));

        for (; rest > 1; rest--, pos++)
            FUNC7(pbc, 8, *pos);

    rbsp_stop_one_bit:
        temp = rest ? *pos : *pos & FUNC2(8 - data_bit_start % 8);

        FUNC3(temp);
        i = FUNC4(*pos);
        temp = temp >> i;
        i = rest ? (8 - i) : (8 - i - data_bit_start % 8);
        FUNC7(pbc, i, temp);
        if (FUNC9(pbc) % 8)
            FUNC7(pbc, 8 - FUNC9(pbc) % 8, 0);
    }

    return 0;
}