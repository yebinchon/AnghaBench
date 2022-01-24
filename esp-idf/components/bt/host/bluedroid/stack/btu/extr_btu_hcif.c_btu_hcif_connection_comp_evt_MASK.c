#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {int /*<<< orphan*/  bd_addr; } ;
typedef  TYPE_1__ tBTM_ESCO_DATA ;
typedef  scalar_t__ UINT8 ;
typedef  int /*<<< orphan*/  UINT16 ;
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  BD_ADDR_LEN ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 scalar_t__ HCI_LINK_TYPE_ACL ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC3 (scalar_t__,scalar_t__*) ; 
 int /*<<< orphan*/  FUNC4 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,scalar_t__,scalar_t__) ; 
 int /*<<< orphan*/  FUNC6 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 

__attribute__((used)) static void FUNC9 (UINT8 *p)
{
    UINT8       status;
    UINT16      handle;
    BD_ADDR     bda;
    UINT8       link_type;
#if SMP_INCLUDED == TRUE
    UINT8       enc_mode;
#endif  ///SMP_INCLUDED == TRUE
#if BTM_SCO_INCLUDED == TRUE
    tBTM_ESCO_DATA  esco_data;
#endif

    FUNC3    (status, p);
    FUNC2   (handle, p);
    FUNC1   (bda, p);
    FUNC3    (link_type, p);
#if (SMP_INCLUDED == TRUE)
    FUNC3    (enc_mode, p);
#endif  ///SMP_INCLUDED == TRUE
    handle = FUNC0 (handle);

    if (link_type == HCI_LINK_TYPE_ACL) {
#if (SMP_INCLUDED == TRUE)
        FUNC5 (bda, handle, status, enc_mode);
#endif  ///SMP_INCLUDED == TRUE
        FUNC6 (status, handle, bda);
    }
#if BTM_SCO_INCLUDED == TRUE
    else {
        FUNC8(&esco_data, 0, sizeof(tBTM_ESCO_DATA));
        /* esco_data.link_type = HCI_LINK_TYPE_SCO; already zero */
        FUNC7 (esco_data.bd_addr, bda, BD_ADDR_LEN);
        FUNC4 (status, bda, handle, &esco_data);
    }
#endif /* BTM_SCO_INCLUDED */
}