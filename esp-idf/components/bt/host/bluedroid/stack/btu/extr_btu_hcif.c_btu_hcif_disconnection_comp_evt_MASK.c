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
typedef  int /*<<< orphan*/  UINT8 ;
typedef  int /*<<< orphan*/  UINT16 ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC6 (UINT8 *p)
{
    UINT16  handle;
    UINT8   reason;

    ++p;
    FUNC1 (handle, p);
    FUNC2  (reason, p);

    handle = FUNC0 (handle);

#if BTM_SCO_INCLUDED == TRUE
    /* If L2CAP doesn't know about it, send it to SCO */
    if (!FUNC5 (handle, reason)) {
        FUNC3 (handle, reason);
    }
#else
    l2c_link_hci_disc_comp (handle, reason);
#endif /* BTM_SCO_INCLUDED */
#if (SMP_INCLUDED == TRUE)
    /* Notify security manager */
    FUNC4 (handle, reason);
#endif  ///SMP_INCLUDED == TRUE
}