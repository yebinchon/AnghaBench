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
typedef  int /*<<< orphan*/  uint16_t ;
struct TYPE_2__ {int /*<<< orphan*/ * handle; } ;
typedef  TYPE_1__ mz_compat ;
typedef  int int32_t ;

/* Variables and functions */
 int MZ_OK ; 
 int ZIP_PARAMERROR ; 
 int FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char const*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

int FUNC4(zipFile file, const char *global_comment, uint16_t version_madeby)
{
    mz_compat *compat = (mz_compat *)file;
    int32_t err = MZ_OK;

    if (compat == NULL)
        return ZIP_PARAMERROR;
    if (compat->handle == NULL)
        return err;

    if (global_comment != NULL)
        FUNC2(compat->handle, global_comment);

    FUNC3(compat->handle, version_madeby);
    err = FUNC0(compat->handle);
    FUNC1(&compat->handle);

    return err;
}