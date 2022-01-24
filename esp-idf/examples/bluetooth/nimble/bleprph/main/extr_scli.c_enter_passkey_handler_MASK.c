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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,char*,char*) ; 
 int /*<<< orphan*/  cli_handle ; 
 scalar_t__ FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,...) ; 
 scalar_t__ FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int*,int /*<<< orphan*/ ) ; 

__attribute__((used)) static int FUNC5(int argc, char *argv[])
{
    int key;
    char pkey[8];
    int num;

    if (argc != 2) {
        return -1;
    }

    FUNC2(argv[1], "%s", pkey);
    FUNC0("You entered", "%s %s", argv[0], argv[1]);
    num = pkey[0];

    if (FUNC1(num)) {
        if ((FUNC3(pkey, "Y") == 0) || (FUNC3(pkey, "Yes") == 0)) {
            key = 1;
            FUNC4(cli_handle, &key, 0);
        } else {
            key = 0;
            FUNC4(cli_handle, &key, 0);
        }
    } else {
        FUNC2(pkey, "%d", &key);
        FUNC4(cli_handle, &key, 0);
    }

    return 0;
}