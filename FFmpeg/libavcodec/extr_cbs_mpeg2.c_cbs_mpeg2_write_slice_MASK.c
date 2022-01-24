#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_2__ ;
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  int uint8_t ;
struct TYPE_5__ {TYPE_1__* content; } ;
struct TYPE_4__ {int* data; int data_size; int data_bit_start; int /*<<< orphan*/  header; } ;
typedef  int /*<<< orphan*/  PutBitContext ;
typedef  TYPE_1__ MPEG2RawSlice ;
typedef  TYPE_2__ CodedBitstreamUnit ;
typedef  int /*<<< orphan*/  CodedBitstreamContext ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int*) ; 
 int /*<<< orphan*/  ENOSPC ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int*,size_t) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int FUNC9 (int /*<<< orphan*/ *) ; 
 int FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,size_t) ; 

__attribute__((used)) static int FUNC13(CodedBitstreamContext *ctx,
                                 CodedBitstreamUnit *unit,
                                 PutBitContext *pbc)
{
    MPEG2RawSlice *slice = unit->content;
    int err;

    err = FUNC4(ctx, pbc, &slice->header);
    if (err < 0)
        return err;

    if (slice->data) {
        size_t rest = slice->data_size - (slice->data_bit_start + 7) / 8;
        uint8_t *pos = slice->data + slice->data_bit_start / 8;

        FUNC3(slice->data_bit_start >= 0 &&
                   8 * slice->data_size > slice->data_bit_start);

        if (slice->data_size * 8 + 8 > FUNC10(pbc))
            return FUNC0(ENOSPC);

        // First copy the remaining bits of the first byte
        if (slice->data_bit_start % 8)
            FUNC7(pbc, 8 - slice->data_bit_start % 8,
                     *pos++ & FUNC2(8 - slice->data_bit_start % 8));

        if (FUNC9(pbc) % 8 == 0) {
            // If the writer is aligned at this point,
            // memcpy can be used to improve performance.
            // This is the normal case.
            FUNC5(pbc);
            FUNC6(FUNC11(pbc), pos, rest);
            FUNC12(pbc, rest);
        } else {
            // If not, we have to copy manually:
            for (; rest > 3; rest -= 4, pos += 4)
                FUNC8(pbc, FUNC1(pos));

            for (; rest; rest--, pos++)
                FUNC7(pbc, 8, *pos);

            // Align with zeros
            FUNC7(pbc, 8 - FUNC9(pbc) % 8, 0);
        }
    }

    return 0;
}