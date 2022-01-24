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
struct TYPE_3__ {scalar_t__ server; } ;

/* Variables and functions */
 int /*<<< orphan*/  CDVD_IRX ; 
 scalar_t__ FUNC0 (TYPE_1__*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ cd0 ; 
 int cdvd_inited ; 

int FUNC1()
{
    int i;

    while (1) {
        if (FUNC0(&cd0, CDVD_IRX, 0) < 0)
            return -1;  // bind error
        if (cd0.server != 0)
            break;
        i = 0x10000;
        while (i--)
            ;
    }

    cdvd_inited = 1;

    return 0;
}