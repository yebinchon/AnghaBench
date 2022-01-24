#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int ndimensions; int nentries; int* lens; int lookup; int* quantlist; int seq_p; int /*<<< orphan*/  delta; int /*<<< orphan*/  min; } ;
typedef  TYPE_1__ vorbis_enc_codebook ;
typedef  int /*<<< orphan*/  PutBitContext ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 int FUNC1 (int,int,int) ; 
 int FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5(PutBitContext *pb, vorbis_enc_codebook *cb)
{
    int i;
    int ordered = 0;

    FUNC3(pb, 24, 0x564342); //magic
    FUNC3(pb, 16, cb->ndimensions);
    FUNC3(pb, 24, cb->nentries);

    for (i = 1; i < cb->nentries; i++)
        if (cb->lens[i] < cb->lens[i-1])
            break;
    if (i == cb->nentries)
        ordered = 1;

    FUNC3(pb, 1, ordered);
    if (ordered) {
        int len = cb->lens[0];
        FUNC3(pb, 5, len - 1);
        i = 0;
        while (i < cb->nentries) {
            int j;
            for (j = 0; j+i < cb->nentries; j++)
                if (cb->lens[j+i] != len)
                    break;
            FUNC3(pb, FUNC2(cb->nentries - i), j);
            i += j;
            len++;
        }
    } else {
        int sparse = 0;
        for (i = 0; i < cb->nentries; i++)
            if (!cb->lens[i])
                break;
        if (i != cb->nentries)
            sparse = 1;
        FUNC3(pb, 1, sparse);

        for (i = 0; i < cb->nentries; i++) {
            if (sparse)
                FUNC3(pb, 1, !!cb->lens[i]);
            if (cb->lens[i])
                FUNC3(pb, 5, cb->lens[i] - 1);
        }
    }

    FUNC3(pb, 4, cb->lookup);
    if (cb->lookup) {
        int tmp  = FUNC1(cb->lookup, cb->ndimensions, cb->nentries);
        int bits = FUNC2(cb->quantlist[0]);

        for (i = 1; i < tmp; i++)
            bits = FUNC0(bits, FUNC2(cb->quantlist[i]));

        FUNC4(pb, cb->min);
        FUNC4(pb, cb->delta);

        FUNC3(pb, 4, bits - 1);
        FUNC3(pb, 1, cb->seq_p);

        for (i = 0; i < tmp; i++)
            FUNC3(pb, bits, cb->quantlist[i]);
    }
}