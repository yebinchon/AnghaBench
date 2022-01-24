#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int* num_ele; int** pairing; int** index; } ;
struct TYPE_7__ {int samplerate_index; TYPE_2__ pce; } ;
struct TYPE_5__ {int flags; int profile; TYPE_3__* priv_data; } ;
typedef  int /*<<< orphan*/  PutBitContext ;
typedef  TYPE_1__ AVCodecContext ;
typedef  TYPE_2__ AACPCEInfo ;
typedef  TYPE_3__ AACEncContext ;

/* Variables and functions */
 int AV_CODEC_FLAG_BITEXACT ; 
 char* LIBAVCODEC_IDENT ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int) ; 
 int FUNC3 (char const*) ; 

__attribute__((used)) static void FUNC4(PutBitContext *pb, AVCodecContext *avctx)
{
    int i, j;
    AACEncContext *s = avctx->priv_data;
    AACPCEInfo *pce = &s->pce;
    const int bitexact = avctx->flags & AV_CODEC_FLAG_BITEXACT;
    const char *aux_data = bitexact ? "Lavc" : LIBAVCODEC_IDENT;

    FUNC2(pb, 4, 0);

    FUNC2(pb, 2, avctx->profile);
    FUNC2(pb, 4, s->samplerate_index);

    FUNC2(pb, 4, pce->num_ele[0]); /* Front */
    FUNC2(pb, 4, pce->num_ele[1]); /* Side */
    FUNC2(pb, 4, pce->num_ele[2]); /* Back */
    FUNC2(pb, 2, pce->num_ele[3]); /* LFE */
    FUNC2(pb, 3, 0); /* Assoc data */
    FUNC2(pb, 4, 0); /* CCs */

    FUNC2(pb, 1, 0); /* Stereo mixdown */
    FUNC2(pb, 1, 0); /* Mono mixdown */
    FUNC2(pb, 1, 0); /* Something else */

    for (i = 0; i < 4; i++) {
        for (j = 0; j < pce->num_ele[i]; j++) {
            if (i < 3)
                FUNC2(pb, 1, pce->pairing[i][j]);
            FUNC2(pb, 4, pce->index[i][j]);
        }
    }

    FUNC0(pb);
    FUNC2(pb, 8, FUNC3(aux_data));
    FUNC1(pb, aux_data, 0);
}