#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_5__ ;
typedef  struct TYPE_12__   TYPE_4__ ;
typedef  struct TYPE_11__   TYPE_3__ ;
typedef  struct TYPE_10__   TYPE_2__ ;
typedef  struct TYPE_9__   TYPE_1__ ;

/* Type definitions */
struct TYPE_12__ {scalar_t__ capacity; scalar_t__ start; } ;
typedef  TYPE_4__ buffer_t ;
typedef  int /*<<< orphan*/  ZSTD_pthread_mutex_t ;
struct TYPE_11__ {int /*<<< orphan*/  ldmWindowCond; int /*<<< orphan*/  ldmWindow; int /*<<< orphan*/  ldmWindowMutex; } ;
struct TYPE_9__ {scalar_t__ enableLdm; } ;
struct TYPE_10__ {TYPE_1__ ldmParams; } ;
struct TYPE_13__ {TYPE_3__ serial; TYPE_2__ params; } ;
typedef  TYPE_5__ ZSTDMT_CCtx ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,char*,...) ; 
 scalar_t__ FUNC1 (TYPE_4__,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC5(ZSTDMT_CCtx* mtctx, buffer_t buffer)
{
    if (mtctx->params.ldmParams.enableLdm) {
        ZSTD_pthread_mutex_t* mutex = &mtctx->serial.ldmWindowMutex;
        FUNC0(5, "ZSTDMT_waitForLdmComplete");
        FUNC0(5, "source  [0x%zx, 0x%zx)",
                    (size_t)buffer.start,
                    (size_t)buffer.start + buffer.capacity);
        FUNC2(mutex);
        while (FUNC1(buffer, mtctx->serial.ldmWindow)) {
            FUNC0(5, "Waiting for LDM to finish...");
            FUNC3(&mtctx->serial.ldmWindowCond, mutex);
        }
        FUNC0(6, "Done waiting for LDM to finish");
        FUNC4(mutex);
    }
}