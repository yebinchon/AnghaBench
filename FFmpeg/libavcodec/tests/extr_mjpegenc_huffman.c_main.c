
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_11__ TYPE_2__ ;
typedef struct TYPE_10__ TYPE_1__ ;


struct TYPE_11__ {int code; int length; } ;
struct TYPE_10__ {int value; int prob; } ;
typedef TYPE_1__ PTable ;
typedef TYPE_2__ HuffTable ;


 int FF_ARRAY_ELEMS (TYPE_2__*) ;
 scalar_t__ check_lengths (int,int,TYPE_2__*,int) ;
 int ff_mjpegenc_huffman_compute_bits (TYPE_1__*,TYPE_2__*,int,int) ;
 int fprintf (int ,char*,scalar_t__,scalar_t__,scalar_t__,scalar_t__) ;
 TYPE_2__* probs_sat ;
 TYPE_2__* probs_skewed ;
 TYPE_2__* probs_zeroes ;
 int stderr ;

int main(int argc, char **argv)
{
    int i, ret = 0;

    PTable val_counts[] = {
        {.value = 0, .prob = 1},
        {.value = 1, .prob = 2},
        {.value = 2, .prob = 5},
        {.value = 3, .prob = 10},
        {.value = 4, .prob = 21},
    };

    static const HuffTable expected[] = {
        {.code = 0, .length = 3},
        {.code = 1, .length = 3},
        {.code = 2, .length = 3},
        {.code = 3, .length = 3},
        {.code = 4, .length = 1},
    };

    HuffTable distincts[5];



    ff_mjpegenc_huffman_compute_bits(val_counts, distincts,
                                     FF_ARRAY_ELEMS(distincts), 3);

    for (i = 0; i < FF_ARRAY_ELEMS(distincts); i++) {
        if (distincts[i].code != expected[i].code ||
            distincts[i].length != expected[i].length) {
            fprintf(stderr,
                    "Built huffman does not equal expectations. "
                    "Expected: code %d probability %d, "
                    "Actual: code %d probability %d\n",
                    expected[i].code, expected[i].length,
                    distincts[i].code, distincts[i].length);
            ret = 1;
        }
    }


    if (check_lengths(16, 18, probs_zeroes, FF_ARRAY_ELEMS(probs_zeroes)))
        ret = 1;

    if (check_lengths(16, 41282, probs_skewed, FF_ARRAY_ELEMS(probs_skewed)))
        ret = 1;

    if (check_lengths(16, 669904, probs_sat, FF_ARRAY_ELEMS(probs_sat)))
        ret = 1;

    return ret;
}
