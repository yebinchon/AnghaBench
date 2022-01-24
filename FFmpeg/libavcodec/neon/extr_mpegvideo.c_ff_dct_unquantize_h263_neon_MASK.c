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
typedef  int /*<<< orphan*/  uint16x8_t ;
typedef  int /*<<< orphan*/  uint16x4_t ;
typedef  int /*<<< orphan*/  int16x8_t ;
typedef  int /*<<< orphan*/  int16x4_t ;
typedef  int /*<<< orphan*/  int16_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void inline FUNC22(int qscale, int qadd, int nCoeffs,
                                               int16_t *block)
{
    int16x8_t q0s16, q2s16, q3s16, q8s16, q10s16, q11s16, q13s16;
    int16x8_t q14s16, q15s16, qzs16;
    int16x4_t d0s16, d2s16, d3s16, dzs16;
    uint16x8_t q1u16, q9u16;
    uint16x4_t d1u16;

    dzs16 = FUNC8(0);
    qzs16 = FUNC9(0);

    q15s16 = FUNC9(qscale << 1);
    q14s16 = FUNC9(qadd);
    q13s16 = FUNC15(q14s16);

    if (nCoeffs > 4) {
        for (; nCoeffs > 8; nCoeffs -= 16, block += 16) {
            q0s16 = FUNC12(block);
            q3s16 = FUNC18(FUNC7(q0s16, qzs16));
            q8s16 = FUNC12(block + 8);
            q1u16 = FUNC5(q0s16, qzs16);
            q2s16 = FUNC14(q0s16, q15s16);
            q11s16 = FUNC18(FUNC7(q8s16, qzs16));
            q10s16 = FUNC14(q8s16, q15s16);
            q3s16 = FUNC3(FUNC19(q3s16), q13s16, q14s16);
            q11s16 = FUNC3(FUNC19(q11s16), q13s16, q14s16);
            q2s16 = FUNC1(q2s16, q3s16);
            q9u16 = FUNC5(q8s16, qzs16);
            q10s16 = FUNC1(q10s16, q11s16);
            q0s16 = FUNC3(q1u16, q0s16, q2s16);
            q8s16 = FUNC3(q9u16, q8s16, q10s16);
            FUNC21(block, q0s16);
            FUNC21(block + 8, q8s16);
        }
    }
    if (nCoeffs <= 0)
        return;

    d0s16 = FUNC11(block);
    d3s16 = FUNC16(FUNC6(d0s16, dzs16));
    d1u16 = FUNC4(d0s16, dzs16);
    d2s16 = FUNC13(d0s16, FUNC10(q15s16));
    d3s16 = FUNC2(FUNC17(d3s16),
                     FUNC10(q13s16), FUNC10(q14s16));
    d2s16 = FUNC0(d2s16, d3s16);
    d0s16 = FUNC2(d1u16, d0s16, d2s16);
    FUNC20(block, d0s16);
}