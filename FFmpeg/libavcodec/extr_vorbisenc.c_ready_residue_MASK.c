#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int type; float** maxes; int classifications; int** books; } ;
typedef  TYPE_1__ vorbis_enc_residue ;
struct TYPE_7__ {TYPE_3__* codebooks; } ;
typedef  TYPE_2__ vorbis_enc_context ;
struct TYPE_8__ {int ndimensions; int lookup; int nentries; int /*<<< orphan*/ * dimensions; int /*<<< orphan*/ * lens; } ;
typedef  TYPE_3__ vorbis_enc_codebook ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 float** FUNC3 (int,int) ; 
 float FUNC4 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(vorbis_enc_residue *rc, vorbis_enc_context *venc)
{
    int i;
    FUNC2(rc->type == 2);
    rc->maxes = FUNC3(rc->classifications, sizeof(float[2]));
    if (!rc->maxes)
        return FUNC0(ENOMEM);
    for (i = 0; i < rc->classifications; i++) {
        int j;
        vorbis_enc_codebook * cb;
        for (j = 0; j < 8; j++)
            if (rc->books[i][j] != -1)
                break;
        if (j == 8) // zero
            continue;
        cb = &venc->codebooks[rc->books[i][j]];
        FUNC1(cb->ndimensions >= 2);
        FUNC1(cb->lookup);

        for (j = 0; j < cb->nentries; j++) {
            float a;
            if (!cb->lens[j])
                continue;
            a = FUNC4(cb->dimensions[j * cb->ndimensions]);
            if (a > rc->maxes[i][0])
                rc->maxes[i][0] = a;
            a = FUNC4(cb->dimensions[j * cb->ndimensions + 1]);
            if (a > rc->maxes[i][1])
                rc->maxes[i][1] = a;
        }
    }
    // small bias
    for (i = 0; i < rc->classifications; i++) {
        rc->maxes[i][0] += 0.8;
        rc->maxes[i][1] += 0.8;
    }
    return 0;
}