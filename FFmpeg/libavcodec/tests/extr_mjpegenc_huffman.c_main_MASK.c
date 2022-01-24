#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_11__   TYPE_2__ ;
typedef  struct TYPE_10__   TYPE_1__ ;

/* Type definitions */
struct TYPE_11__ {int code; int length; } ;
struct TYPE_10__ {int value; int prob; } ;
typedef  TYPE_1__ PTable ;
typedef  TYPE_2__ HuffTable ;

/* Variables and functions */
 int FUNC0 (TYPE_2__*) ; 
 scalar_t__ FUNC1 (int,int,TYPE_2__*,int) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*,TYPE_2__*,int,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ; 
 TYPE_2__* probs_sat ; 
 TYPE_2__* probs_skewed ; 
 TYPE_2__* probs_zeroes ; 
 int /*<<< orphan*/  stderr ; 

int FUNC4(int argc, char **argv)
{
    int i, ret = 0;
    // Probabilities of symbols 0..4
    PTable val_counts[] = {
        {.value = 0, .prob = 1},
        {.value = 1, .prob = 2},
        {.value = 2, .prob = 5},
        {.value = 3, .prob = 10},
        {.value = 4, .prob = 21},
    };
    // Expected code lengths for each symbol
    static const HuffTable expected[] = {
        {.code = 0, .length = 3},
        {.code = 1, .length = 3},
        {.code = 2, .length = 3},
        {.code = 3, .length = 3},
        {.code = 4, .length = 1},
    };
    // Actual code lengths
    HuffTable distincts[5];

    // Build optimal huffman tree using an internal function, to allow for
    // smaller-than-normal test cases. This mutates val_counts by sorting.
    FUNC2(val_counts, distincts,
                                     FUNC0(distincts), 3);

    for (i = 0; i < FUNC0(distincts); i++) {
        if (distincts[i].code != expected[i].code ||
            distincts[i].length != expected[i].length) {
            FUNC3(stderr,
                    "Built huffman does not equal expectations. "
                    "Expected: code %ld probability %ld, "
                    "Actual: code %ld probability %ld\n",
                    expected[i].code, expected[i].length,
                    distincts[i].code, distincts[i].length);
            ret = 1;
        }
    }

    // Check handling of zero probabilities
    if (FUNC1(16, 18, probs_zeroes, FUNC0(probs_zeroes)))
        ret = 1;
    // Check skewed distribution over 256 without saturated lengths
    if (FUNC1(16, 41282, probs_skewed, FUNC0(probs_skewed)))
        ret = 1;
    // Check skewed distribution over 256 with saturated lengths
    if (FUNC1(16, 669904, probs_sat, FUNC0(probs_sat)))
        ret = 1;

    return ret;
}