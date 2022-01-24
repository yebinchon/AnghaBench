#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int* CWlengthT; int* codewords; int /*<<< orphan*/ * skipFlags; scalar_t__* bandFlagsBuf; scalar_t__* bandWidthT; int /*<<< orphan*/ * sumLenArr; } ;
struct TYPE_5__ {int /*<<< orphan*/  gb; } ;
typedef  TYPE_1__ IMCContext ;
typedef  TYPE_2__ IMCChannel ;
typedef  int /*<<< orphan*/  AVCodecContext ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_WARNING ; 
 int BANDS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,int,int,int) ; 
 int* band_tab ; 
 int FUNC1 (int /*<<< orphan*/ *,int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC3(AVCodecContext *avctx,
                           IMCContext *q, IMCChannel *chctx)
{
    int i, j, cw_len, cw;

    for (i = 0; i < BANDS; i++) {
        if (!chctx->sumLenArr[i])
            continue;
        if (chctx->bandFlagsBuf[i] || chctx->bandWidthT[i]) {
            for (j = band_tab[i]; j < band_tab[i + 1]; j++) {
                cw_len = chctx->CWlengthT[j];
                cw = 0;

                if (cw_len && (!chctx->bandFlagsBuf[i] || !chctx->skipFlags[j])) {
                    if (FUNC2(&q->gb) + cw_len > 512) {
                        FUNC0(avctx, AV_LOG_WARNING,
                            "Potential problem on band %i, coefficient %i"
                            ": cw_len=%i\n", i, j, cw_len);
                    } else
                        cw = FUNC1(&q->gb, cw_len);
                }

                chctx->codewords[j] = cw;
            }
        }
    }
}