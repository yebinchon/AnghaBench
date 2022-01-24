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
 int /*<<< orphan*/  CDVD_GETSIZE ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,void*,int /*<<< orphan*/ ,void*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  cd0 ; 
 int /*<<< orphan*/  cdvd_inited ; 
 unsigned int* sbuff ; 

unsigned int FUNC1()
{
    if (!cdvd_inited)
        return -1;

    FUNC0(&cd0, CDVD_GETSIZE, 0, (void *)(&sbuff[0]), 0, (void *)(&sbuff[0]), 4, 0, 0);

    return sbuff[0];
}