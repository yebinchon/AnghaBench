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
typedef  scalar_t__ uint8_t ;
typedef  int /*<<< orphan*/  uint32_t ;
typedef  int /*<<< orphan*/  uint16_t ;

/* Variables and functions */
 scalar_t__ FUNC0 (char*) ; 
 void* FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,...) ; 
 scalar_t__ FUNC6 (char*,char*) ; 
 int FUNC7 (char*) ; 
 void* FUNC8 (void*,int) ; 

int FUNC9(int argc, char **args)
{
    void *data;
    int len, i;

    if (argc != 3)
    {
        FUNC5("Usage: %s <string | ip | uint32 | uint16 | uint8 | bool> <data>\n", args[0]);
        return 0;
    }

    if (FUNC6(args[1], "string") == 0)
    {
        data = args[2];
        len = FUNC7(args[2]) + 1;
    }
    else if (FUNC6(args[1], "ip") == 0)
    {
        data = FUNC1(1, sizeof (uint32_t));
        *((uint32_t *)data) = FUNC4(args[2]);
        len = sizeof (uint32_t);
    }
    else if (FUNC6(args[1], "uint32") == 0)
    {
        data = FUNC1(1, sizeof (uint32_t));
        *((uint32_t *)data) = FUNC2((uint32_t)FUNC0(args[2]));
        len = sizeof (uint32_t);
    }
    else if (FUNC6(args[1], "uint16") == 0)
    {
        data = FUNC1(1, sizeof (uint16_t));
        *((uint16_t *)data) = FUNC3((uint16_t)FUNC0(args[2]));
        len = sizeof (uint16_t);
    }
    else if (FUNC6(args[1], "uint8") == 0)
    {
        data = FUNC1(1, sizeof (uint8_t));
        *((uint8_t *)data) = FUNC0(args[2]);
        len = sizeof (uint8_t);
    }
    else if (FUNC6(args[1], "bool") == 0)
    {
        data = FUNC1(1, sizeof (char));
        if (FUNC6(args[2], "false") == 0)
            ((char *)data)[0] = 0;
        else if (FUNC6(args[2], "true") == 0)
            ((char *)data)[0] = 1;
        else
        {
            FUNC5("Unknown value `%s` for datatype bool!\n", args[2]);
            return -1;
        }
        len = sizeof (char);
    }
    else
    {
        FUNC5("Unknown data type `%s`!\n", args[1]);
        return -1;
    }

    // Yes we are leaking memory, but the program is so
    // short lived that it doesn't really matter...
    FUNC5("XOR'ing %d bytes of data...\n", len);
    data = FUNC8(data, len);
    for (i = 0; i < len; i++)
        FUNC5("\\x%02X", ((unsigned char *)data)[i]);
    FUNC5("\n");
}