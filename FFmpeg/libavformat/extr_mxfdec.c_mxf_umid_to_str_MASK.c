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
typedef  int* UID ;

/* Variables and functions */
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*,...) ; 

__attribute__((used)) static int FUNC3(UID ul, UID uid, char **str)
{
    int i;
    char *p;
    p = *str = FUNC1(sizeof(UID) * 4 + 2 + 1);
    if (!p)
        return FUNC0(ENOMEM);
    FUNC2(p, 2 + 1, "0x");
    p += 2;
    for (i = 0; i < sizeof(UID); i++) {
        FUNC2(p, 2 + 1, "%.2X", ul[i]);
        p += 2;

    }
    for (i = 0; i < sizeof(UID); i++) {
        FUNC2(p, 2 + 1, "%.2X", uid[i]);
        p += 2;
    }
    return 0;
}