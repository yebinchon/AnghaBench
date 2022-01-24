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
typedef  int /*<<< orphan*/  ZSTD_dictLoadMethod_e ;
typedef  int /*<<< orphan*/  ZSTD_dictContentType_e ;
struct TYPE_8__ {int /*<<< orphan*/  customFree; int /*<<< orphan*/  customAlloc; } ;
typedef  TYPE_1__ ZSTD_customMem ;
struct TYPE_9__ {TYPE_1__ cMem; } ;
typedef  TYPE_2__ ZSTD_DDict ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_2__* const) ; 
 size_t FUNC1 (TYPE_2__* const,void const*,size_t,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (size_t const) ; 
 scalar_t__ FUNC3 (int,TYPE_1__) ; 

ZSTD_DDict* FUNC4(const void* dict, size_t dictSize,
                                      ZSTD_dictLoadMethod_e dictLoadMethod,
                                      ZSTD_dictContentType_e dictContentType,
                                      ZSTD_customMem customMem)
{
    if (!customMem.customAlloc ^ !customMem.customFree) return NULL;

    {   ZSTD_DDict* const ddict = (ZSTD_DDict*) FUNC3(sizeof(ZSTD_DDict), customMem);
        if (ddict == NULL) return NULL;
        ddict->cMem = customMem;
        {   size_t const initResult = FUNC1(ddict,
                                            dict, dictSize,
                                            dictLoadMethod, dictContentType);
            if (FUNC2(initResult)) {
                FUNC0(ddict);
                return NULL;
        }   }
        return ddict;
    }
}