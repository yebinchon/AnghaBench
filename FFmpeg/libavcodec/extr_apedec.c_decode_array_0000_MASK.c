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
typedef  int int32_t ;
struct TYPE_6__ {int error; int /*<<< orphan*/  gb; } ;
struct TYPE_5__ {int ksum; int k; } ;
typedef  int /*<<< orphan*/  GetBitContext ;
typedef  TYPE_1__ APERice ;
typedef  TYPE_2__ APEContext ;

/* Variables and functions */
 int FUNC0 (int,int) ; 
 void* FUNC1 (int) ; 
 int FUNC2 (int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static void FUNC4(APEContext *ctx, GetBitContext *gb,
                              int32_t *out, APERice *rice, int blockstodecode)
{
    int i;
    unsigned ksummax, ksummin;

    rice->ksum = 0;
    for (i = 0; i < FUNC0(blockstodecode, 5); i++) {
        out[i] = FUNC3(&ctx->gb, 10);
        rice->ksum += out[i];
    }
    rice->k = FUNC1(rice->ksum / 10) + 1;
    if (rice->k >= 24)
        return;
    for (; i < FUNC0(blockstodecode, 64); i++) {
        out[i] = FUNC3(&ctx->gb, rice->k);
        rice->ksum += out[i];
        rice->k = FUNC1(rice->ksum / ((i + 1) * 2)) + 1;
        if (rice->k >= 24)
            return;
    }
    ksummax = 1 << (rice->k + 7);
    ksummin = rice->k ? (1 << (rice->k + 6)) : 0;
    for (; i < blockstodecode; i++) {
        if (FUNC2(&ctx->gb) < 1) {
            ctx->error = 1;
            return ;
        }
        out[i] = FUNC3(&ctx->gb, rice->k);
        rice->ksum += out[i] - out[i - 64];
        while (rice->ksum < ksummin) {
            rice->k--;
            ksummin = rice->k ? ksummin >> 1 : 0;
            ksummax >>= 1;
        }
        while (rice->ksum >= ksummax) {
            rice->k++;
            if (rice->k > 24)
                return;
            ksummax <<= 1;
            ksummin = ksummin ? ksummin << 1 : 128;
        }
    }

    for (i = 0; i < blockstodecode; i++)
        out[i] = ((out[i] >> 1) ^ ((out[i] & 1) - 1)) + 1;
}