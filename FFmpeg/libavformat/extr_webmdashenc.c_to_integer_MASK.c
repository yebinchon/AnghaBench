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
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  ENOMEM ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 char* FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int) ; 

__attribute__((used)) static int FUNC5(char *p, int len)
{
    int ret;
    char *q = FUNC3(sizeof(char) * len);
    if (!q)
        return FUNC0(ENOMEM);
    FUNC4(q, p, len);
    ret = FUNC1(q);
    FUNC2(q);
    return ret;
}