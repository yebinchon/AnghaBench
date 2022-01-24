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
typedef  int /*<<< orphan*/  cl_device_id ;

/* Variables and functions */
 int /*<<< orphan*/  CL_DEVICE_EXTENSIONS ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC2 (char*,char const*) ; 

__attribute__((used)) static int FUNC3(cl_device_id device_id,
                                         const char *name)
{
    char *str;
    int found = 0;
    str = FUNC1(device_id,
                                   CL_DEVICE_EXTENSIONS);
    if (str && FUNC2(str, name))
        found = 1;
    FUNC0(str);
    return found;
}