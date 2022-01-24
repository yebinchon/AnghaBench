#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int /*<<< orphan*/  sceCdRMode ;
struct TYPE_2__ {int trycount; int spindlctrl; } ;

/* Variables and functions */
 int FALSE ; 
 scalar_t__ TRUE ; 
 TYPE_1__ cdReadMode ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (void*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int FUNC3 () ; 
 scalar_t__ FUNC4 (int,int,void*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 

int FUNC6(u32 lsn, u32 sectors, void *buf, sceCdRMode *mode)
{
    int retry;
    int result = 0;
    cdReadMode.trycount = 32;

    for (retry = 0; retry < 32; retry++)  // 32 retries
    {
        if (retry <= 8)
            cdReadMode.spindlctrl = 1;  // Try fast reads for first 8 tries
        else
            cdReadMode.spindlctrl = 0;  // Then try slow reads

        if (!FUNC0())
            return FALSE;

        FUNC2(0);

        if (FUNC4(lsn, sectors, buf, mode) != TRUE) {
            // Failed to read
            if (retry == 31) {
                // Still failed after last retry
                FUNC1(buf, 0, (sectors << 11));
                // printf("Couldn't Read from file for some reason\n");
                return FALSE;  // error
            }
        } else {
            // Read okay
            FUNC5(0);
            break;
        }

        result = FUNC3();
        if (result == 0)
            break;
    }

    cdReadMode.trycount = 32;
    cdReadMode.spindlctrl = 1;

    if (result == 0)
        return TRUE;

    FUNC1(buf, 0, (sectors << 11));

    return FALSE;  // error
}