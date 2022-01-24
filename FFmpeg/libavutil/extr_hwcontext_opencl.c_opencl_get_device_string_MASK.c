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
typedef  scalar_t__ cl_int ;
typedef  int /*<<< orphan*/  cl_device_info ;
typedef  int /*<<< orphan*/  cl_device_id ;

/* Variables and functions */
 scalar_t__ CL_SUCCESS ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 (size_t) ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,size_t,char*,size_t*) ; 
 int FUNC4 (char*) ; 

__attribute__((used)) static char *FUNC5(cl_device_id device_id,
                                      cl_device_info key)
{
    char *str;
    size_t size;
    cl_int cle;
    cle = FUNC3(device_id, key, 0, NULL, &size);
    if (cle != CL_SUCCESS)
        return NULL;
    str = FUNC2(size);
    if (!str)
        return NULL;
    cle = FUNC3(device_id, key, size, str, &size);
    if (cle != CL_SUCCESS) {
        FUNC1(str);
        return NULL;
    }
    FUNC0(FUNC4(str) + 1== size);
    return str;
}