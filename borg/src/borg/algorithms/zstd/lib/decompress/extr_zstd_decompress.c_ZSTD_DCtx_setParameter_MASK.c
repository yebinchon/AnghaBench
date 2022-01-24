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
typedef  int /*<<< orphan*/  ZSTD_format_e ;
typedef  int ZSTD_dParameter ;
struct TYPE_3__ {scalar_t__ streamStage; size_t maxWindowSize; int /*<<< orphan*/  format; } ;
typedef  TYPE_1__ ZSTD_DCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int const,int) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
#define  ZSTD_d_format 129 
#define  ZSTD_d_windowLogMax 128 
 int /*<<< orphan*/  parameter_unsupported ; 
 int /*<<< orphan*/  stage_wrong ; 
 scalar_t__ zdss_init ; 

size_t FUNC2(ZSTD_DCtx* dctx, ZSTD_dParameter dParam, int value)
{
    if (dctx->streamStage != zdss_init) return FUNC1(stage_wrong);
    switch(dParam) {
        case ZSTD_d_windowLogMax:
            FUNC0(ZSTD_d_windowLogMax, value);
            dctx->maxWindowSize = ((size_t)1) << value;
            return 0;
        case ZSTD_d_format:
            FUNC0(ZSTD_d_format, value);
            dctx->format = (ZSTD_format_e)value;
            return 0;
        default:;
    }
    return FUNC1(parameter_unsupported);
}