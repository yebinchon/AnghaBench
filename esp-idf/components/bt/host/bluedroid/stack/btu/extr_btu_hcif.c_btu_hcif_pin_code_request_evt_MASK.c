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
typedef  int /*<<< orphan*/  BD_ADDR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 

__attribute__((used)) static void FUNC3 (UINT8 *p)
{
#if (CLASSIC_BT_INCLUDED == TRUE)
    BD_ADDR  bda;

    FUNC0 (bda, p);

    /* Tell L2CAP that there was a PIN code request,  */
    /* it may need to stretch timeouts                */
    FUNC2 (bda);

    FUNC1 (bda);
#endif  ///CLASSIC_BT_INCLUDED == TRUE
}