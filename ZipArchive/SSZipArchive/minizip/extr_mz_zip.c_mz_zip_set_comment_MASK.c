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
struct TYPE_2__ {char* comment; } ;
typedef  TYPE_1__ mz_zip ;
typedef  scalar_t__ int32_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ MZ_MEM_ERROR ; 
 scalar_t__ MZ_OK ; 
 scalar_t__ MZ_PARAM_ERROR ; 
 scalar_t__ UINT16_MAX ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,scalar_t__) ; 
 scalar_t__ FUNC3 (char const*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*,scalar_t__) ; 

int32_t FUNC5(void *handle, const char *comment)
{
    mz_zip *zip = (mz_zip *)handle;
    int32_t comment_size = 0;
    if (zip == NULL || comment == NULL)
        return MZ_PARAM_ERROR;
    if (zip->comment != NULL)
        FUNC1(zip->comment);
    comment_size = (int32_t)FUNC3(comment);
    if (comment_size > UINT16_MAX)
        return MZ_PARAM_ERROR;
    zip->comment = (char *)FUNC0(comment_size+1);
    if (zip->comment == NULL)
        return MZ_MEM_ERROR;
    FUNC2(zip->comment, 0, comment_size+1);
    FUNC4(zip->comment, comment, comment_size);
    return MZ_OK;
}