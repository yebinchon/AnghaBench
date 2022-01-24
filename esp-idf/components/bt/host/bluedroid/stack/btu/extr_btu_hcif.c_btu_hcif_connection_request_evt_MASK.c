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
typedef  scalar_t__ UINT8 ;
typedef  int /*<<< orphan*/  DEV_CLASS ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 scalar_t__ HCI_LINK_TYPE_ACL ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC5 (UINT8 *p)
{
    BD_ADDR     bda;
    DEV_CLASS   dc;
    UINT8       link_type;

    FUNC0   (bda, p);
    FUNC1 (dc, p);
    FUNC2    (link_type, p);
    /* Pass request to security manager to check connect filters before */
    /* passing request to l2cap */
    if (link_type == HCI_LINK_TYPE_ACL) {
#if (SMP_INCLUDED == TRUE)
        FUNC4 (bda, dc);
#endif  ///SMP_INCLUDED == TRUE
    }
#if BTM_SCO_INCLUDED == TRUE
    else {
        FUNC3 (bda, dc, link_type);
    }
#endif /* BTM_SCO_INCLUDED */
}