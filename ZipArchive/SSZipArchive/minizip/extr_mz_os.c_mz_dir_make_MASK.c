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
typedef  scalar_t__ uint16_t ;
typedef  scalar_t__ int32_t ;
typedef  scalar_t__ int16_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (scalar_t__) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 scalar_t__ MZ_MEM_ERROR ; 
 scalar_t__ MZ_OK ; 
 scalar_t__ FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 scalar_t__ FUNC5 (char const*) ; 

int32_t FUNC6(const char *path)
{
    int32_t err = MZ_OK;
    int16_t len = 0;
    char *current_dir = NULL;
    char *match = NULL;
    char hold = 0;


    len = (int16_t)FUNC5(path);
    if (len <= 0)
        return 0;

    current_dir = (char *)FUNC0((uint16_t)len + 1);
    if (current_dir == NULL)
        return MZ_MEM_ERROR;

    FUNC4(current_dir, path);
    FUNC3(current_dir);

    err = FUNC2(current_dir);
    if (err != MZ_OK)
    {
        match = current_dir + 1;
        while (1)
        {
            while (*match != 0 && *match != '\\' && *match != '/')
                match += 1;
            hold = *match;
            *match = 0;

            err = FUNC2(current_dir);
            if (err != MZ_OK)
                break;
            if (hold == 0)
                break;

            *match = hold;
            match += 1;
        }
    }

    FUNC1(current_dir);
    return err;
}