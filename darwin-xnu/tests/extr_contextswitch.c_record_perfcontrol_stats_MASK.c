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
typedef  int /*<<< orphan*/  data ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*,char const*) ; 
 int /*<<< orphan*/  FUNC1 (char const*,int,char const*,char const*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,int*,size_t*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 

void FUNC3(const char *sysctlname, const char *units, const char *info)
{
    int data = 0;
    size_t data_size = sizeof(data);
    FUNC0(FUNC2(sysctlname,
	    &data, &data_size, NULL, 0), 
	    "%s", sysctlname);
    FUNC1(info, data, units, info);
}