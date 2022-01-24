#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ zipFile ;
struct TYPE_2__ {int /*<<< orphan*/  handle; } ;
typedef  TYPE_1__ mz_compat ;

/* Variables and functions */
 int ZIP_PARAMERROR ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 

int FUNC1(zipFile file)
{
    mz_compat *compat = (mz_compat *)file;
    if (compat == NULL)
        return ZIP_PARAMERROR;
    return FUNC0(compat->handle);
}