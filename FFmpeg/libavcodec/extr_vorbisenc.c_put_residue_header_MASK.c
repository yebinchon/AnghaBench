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
struct TYPE_3__ {int type; int begin; int end; int partition_size; int classifications; int classbook; int** books; } ;
typedef  TYPE_1__ vorbis_enc_residue ;
typedef  int /*<<< orphan*/  PutBitContext ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 

__attribute__((used)) static void FUNC1(PutBitContext *pb, vorbis_enc_residue *rc)
{
    int i;

    FUNC0(pb, 16, rc->type);

    FUNC0(pb, 24, rc->begin);
    FUNC0(pb, 24, rc->end);
    FUNC0(pb, 24, rc->partition_size - 1);
    FUNC0(pb, 6, rc->classifications - 1);
    FUNC0(pb, 8, rc->classbook);

    for (i = 0; i < rc->classifications; i++) {
        int j, tmp = 0;
        for (j = 0; j < 8; j++)
            tmp |= (rc->books[i][j] != -1) << j;

        FUNC0(pb, 3, tmp & 7);
        FUNC0(pb, 1, tmp > 7);

        if (tmp > 7)
            FUNC0(pb, 5, tmp >> 3);
    }

    for (i = 0; i < rc->classifications; i++) {
        int j;
        for (j = 0; j < 8; j++)
            if (rc->books[i][j] != -1)
                FUNC0(pb, 8, rc->books[i][j]);
    }
}