#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ZSTD_DDict ;
struct TYPE_5__ {int ddictIsCold; void const* const dictEnd; } ;
typedef  TYPE_1__ ZSTD_DCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int,char*,...) ; 
 scalar_t__ FUNC2 (int /*<<< orphan*/  const*) ; 
 size_t FUNC3 (int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,int /*<<< orphan*/  const*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 

size_t FUNC7(ZSTD_DCtx* dctx, const ZSTD_DDict* ddict)
{
    FUNC1(4, "ZSTD_decompressBegin_usingDDict");
    FUNC6(dctx != NULL);
    if (ddict) {
        const char* const dictStart = (const char*)FUNC2(ddict);
        size_t const dictSize = FUNC3(ddict);
        const void* const dictEnd = dictStart + dictSize;
        dctx->ddictIsCold = (dctx->dictEnd != dictEnd);
        FUNC1(4, "DDict is %s",
                    dctx->ddictIsCold ? "~cold~" : "hot!");
    }
    FUNC0( FUNC5(dctx) );
    if (ddict) {   /* NULL ddict is equivalent to no dictionary */
        FUNC4(dctx, ddict);
    }
    return 0;
}