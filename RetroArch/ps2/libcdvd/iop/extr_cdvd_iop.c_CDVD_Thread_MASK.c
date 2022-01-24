#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  CDVD_IRX ; 
 int /*<<< orphan*/  CDVD_rpc_server ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * buffer ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  qd ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  sd0 ; 

void FUNC8(void *param)
{
#ifdef DEBUG
    printf("CDVD: RPC Initialize\n");
#endif

    FUNC4(0);

    // 0x4800 bytes for TocEntry structures (can fit 128 of them)
    // 0x400 bytes for the filename string
    buffer = FUNC0(0, 0x4C00, NULL);
    if (buffer == NULL) {
#ifdef DEBUG
        printf("Failed to allocate memory for RPC buffer!\n");
#endif

        FUNC2();
    }

    FUNC7(&qd, FUNC1());
    FUNC5(&sd0, CDVD_IRX, CDVD_rpc_server, (void *)buffer, 0, 0, &qd);
    FUNC6(&qd);
}