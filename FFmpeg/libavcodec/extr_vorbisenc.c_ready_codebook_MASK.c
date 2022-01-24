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
struct TYPE_3__ {int nentries; int lookup; int* pow2; float* dimensions; int ndimensions; float min; int* quantlist; int delta; scalar_t__ seq_p; int /*<<< orphan*/  codewords; int /*<<< orphan*/  lens; } ;
typedef  TYPE_1__ vorbis_enc_codebook ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 float* FUNC1 (int,int) ; 
 int* FUNC2 (int,int) ; 
 int FUNC3 (int,int,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static int FUNC5(vorbis_enc_codebook *cb)
{
    int i;

    FUNC4(cb->lens, cb->codewords, cb->nentries);

    if (!cb->lookup) {
        cb->pow2 = cb->dimensions = NULL;
    } else {
        int vals = FUNC3(cb->lookup, cb->ndimensions, cb->nentries);
        cb->dimensions = FUNC1(cb->nentries, sizeof(float) * cb->ndimensions);
        cb->pow2 = FUNC2(cb->nentries, sizeof(float));
        if (!cb->dimensions || !cb->pow2)
            return FUNC0(ENOMEM);
        for (i = 0; i < cb->nentries; i++) {
            float last = 0;
            int j;
            int div = 1;
            for (j = 0; j < cb->ndimensions; j++) {
                int off;
                if (cb->lookup == 1)
                    off = (i / div) % vals; // lookup type 1
                else
                    off = i * cb->ndimensions + j; // lookup type 2

                cb->dimensions[i * cb->ndimensions + j] = last + cb->min + cb->quantlist[off] * cb->delta;
                if (cb->seq_p)
                    last = cb->dimensions[i * cb->ndimensions + j];
                cb->pow2[i] += cb->dimensions[i * cb->ndimensions + j] * cb->dimensions[i * cb->ndimensions + j];
                div *= vals;
            }
            cb->pow2[i] /= 2.0;
        }
    }
    return 0;
}