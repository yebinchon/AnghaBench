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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  SCR ; 

__attribute__((used)) static int
FUNC2( void )
{
    /* Verify that the Scratch Register is accessible */

    FUNC1( SCR, 0x5a );
    if (FUNC0(SCR) != 0x5a) return 0;
    FUNC1( SCR, 0xa5 );
    if (FUNC0(SCR) != 0xa5) return 0;
    return 1;
}