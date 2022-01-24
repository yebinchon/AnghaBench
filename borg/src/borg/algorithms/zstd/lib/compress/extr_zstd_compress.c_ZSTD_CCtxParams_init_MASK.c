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
struct TYPE_5__ {int contentSizeFlag; } ;
struct TYPE_6__ {int compressionLevel; TYPE_1__ fParams; } ;
typedef  TYPE_2__ ZSTD_CCtx_params ;

/* Variables and functions */
 size_t FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GENERIC ; 
 int /*<<< orphan*/  FUNC1 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

size_t FUNC2(ZSTD_CCtx_params* cctxParams, int compressionLevel) {
    if (!cctxParams) { return FUNC0(GENERIC); }
    FUNC1(cctxParams, 0, sizeof(*cctxParams));
    cctxParams->compressionLevel = compressionLevel;
    cctxParams->fParams.contentSizeFlag = 1;
    return 0;
}