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
 int LIBPOSTPROC_VERSION_INT ; 
 int LIBPOSTPROC_VERSION_MICRO ; 
 int /*<<< orphan*/  FUNC0 (int) ; 

unsigned FUNC1(void)
{
    FUNC0(LIBPOSTPROC_VERSION_MICRO >= 100);
    return LIBPOSTPROC_VERSION_INT;
}