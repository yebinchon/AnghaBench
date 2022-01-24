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
typedef  int /*<<< orphan*/  uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
struct AVAESCTR {int dummy; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct AVAESCTR*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 () ; 

void FUNC2(struct AVAESCTR *a)
{
    uint32_t iv[2];

    iv[0] = FUNC1();
    iv[1] = FUNC1();

    FUNC0(a, (uint8_t*)iv);
}