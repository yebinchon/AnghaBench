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
struct blufi_security {int dummy; } ;
struct TYPE_4__ {int /*<<< orphan*/  aes; int /*<<< orphan*/  dhm; struct TYPE_4__* dh_param; } ;

/* Variables and functions */
 TYPE_1__* blufi_sec ; 
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_1__*,int,int) ; 

void FUNC4(void)
{
    if (blufi_sec == NULL) {
        return;
    }
    if (blufi_sec->dh_param){
        FUNC0(blufi_sec->dh_param);
        blufi_sec->dh_param = NULL;
    }
    FUNC2(&blufi_sec->dhm);
    FUNC1(&blufi_sec->aes);

    FUNC3(blufi_sec, 0x0, sizeof(struct blufi_security));

    FUNC0(blufi_sec);
    blufi_sec =  NULL;
}