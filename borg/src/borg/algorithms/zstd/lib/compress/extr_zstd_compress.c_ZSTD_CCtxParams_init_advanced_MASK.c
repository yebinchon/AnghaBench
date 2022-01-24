#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
struct TYPE_6__ {int /*<<< orphan*/  cParams; int /*<<< orphan*/  fParams; } ;
typedef  TYPE_1__ ZSTD_parameters ;
struct TYPE_7__ {int /*<<< orphan*/  compressionLevel; int /*<<< orphan*/  fParams; int /*<<< orphan*/  cParams; } ;
typedef  TYPE_2__ ZSTD_CCtx_params ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 size_t FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  GENERIC ; 
 int /*<<< orphan*/  ZSTD_CLEVEL_DEFAULT ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_2__*,int /*<<< orphan*/ ,int) ; 

size_t FUNC5(ZSTD_CCtx_params* cctxParams, ZSTD_parameters params)
{
    if (!cctxParams) { return FUNC1(GENERIC); }
    FUNC0( FUNC2(params.cParams) );
    FUNC4(cctxParams, 0, sizeof(*cctxParams));
    cctxParams->cParams = params.cParams;
    cctxParams->fParams = params.fParams;
    cctxParams->compressionLevel = ZSTD_CLEVEL_DEFAULT;   /* should not matter, as all cParams are presumed properly defined */
    FUNC3(!FUNC2(params.cParams));
    return 0;
}