#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
struct TYPE_9__ {int fileversion; int /*<<< orphan*/  avctx; } ;
struct TYPE_8__ {int k; } ;
typedef  TYPE_1__ APERice ;
typedef  TYPE_2__ APEContext ;

/* Variables and functions */
 int AVERROR_INVALIDDATA ; 
 int /*<<< orphan*/  AV_LOG_ERROR ; 
 int MODEL_ELEMENTS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int) ; 
 int /*<<< orphan*/  counts_3970 ; 
 int /*<<< orphan*/  counts_diff_3970 ; 
 int FUNC1 (TYPE_2__*,int) ; 
 unsigned int FUNC2 (TYPE_2__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,unsigned int) ; 

__attribute__((used)) static inline int FUNC4(APEContext *ctx, APERice *rice)
{
    unsigned int x, overflow;
    int tmpk;

    overflow = FUNC2(ctx, counts_3970, counts_diff_3970);

    if (overflow == (MODEL_ELEMENTS - 1)) {
        tmpk = FUNC1(ctx, 5);
        overflow = 0;
    } else
        tmpk = (rice->k < 1) ? 0 : rice->k - 1;

    if (tmpk <= 16 || ctx->fileversion < 3910) {
        if (tmpk > 23) {
            FUNC0(ctx->avctx, AV_LOG_ERROR, "Too many bits: %d\n", tmpk);
            return AVERROR_INVALIDDATA;
        }
        x = FUNC1(ctx, tmpk);
    } else if (tmpk <= 31) {
        x = FUNC1(ctx, 16);
        x |= (FUNC1(ctx, tmpk - 16) << 16);
    } else {
        FUNC0(ctx->avctx, AV_LOG_ERROR, "Too many bits: %d\n", tmpk);
        return AVERROR_INVALIDDATA;
    }
    x += overflow << tmpk;

    FUNC3(rice, x);

    /* Convert to signed */
    return ((x >> 1) ^ ((x & 1) - 1)) + 1;
}