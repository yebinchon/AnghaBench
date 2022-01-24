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
struct AVAESCTR {int /*<<< orphan*/  aes; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (struct AVAESCTR*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

void FUNC2(struct AVAESCTR *a)
{
    if (a) {
        FUNC1(&a->aes);
        FUNC0(a);
    }
}