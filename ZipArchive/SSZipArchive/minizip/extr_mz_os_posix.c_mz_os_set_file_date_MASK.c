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
typedef  void* time_t ;
struct utimbuf {void* modtime; void* actime; } ;
typedef  int /*<<< orphan*/  int32_t ;

/* Variables and functions */
 int /*<<< orphan*/  MZ_INTERNAL_ERROR ; 
 int /*<<< orphan*/  MZ_OK ; 
 int /*<<< orphan*/  FUNC0 (void*) ; 
 scalar_t__ FUNC1 (char const*,struct utimbuf*) ; 

int32_t FUNC2(const char *path, time_t modified_date, time_t accessed_date, time_t creation_date)
{
    struct utimbuf ut;

    ut.actime = accessed_date;
    ut.modtime = modified_date;

    /* Creation date not supported */
    FUNC0(creation_date);

    if (FUNC1(path, &ut) != 0)
        return MZ_INTERNAL_ERROR;

    return MZ_OK;
}