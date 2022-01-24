#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  tCMAC_CB ;
struct TYPE_3__ {int /*<<< orphan*/ * text; } ;

/* Variables and functions */
 TYPE_1__ cmac_cb ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 

__attribute__((used)) static void FUNC2(void)
{
    if (cmac_cb.text != NULL) {
        FUNC1(cmac_cb.text);
    }
    FUNC0(&cmac_cb, 0, sizeof(tCMAC_CB));
}