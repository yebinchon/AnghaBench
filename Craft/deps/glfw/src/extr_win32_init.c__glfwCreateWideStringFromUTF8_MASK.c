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
typedef  int /*<<< orphan*/  WCHAR ;

/* Variables and functions */
 int /*<<< orphan*/  CP_UTF8 ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char const*,int,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/ * FUNC1 (int,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 

WCHAR* FUNC3(const char* source)
{
    WCHAR* target;
    int length;

    length = FUNC0(CP_UTF8, 0, source, -1, NULL, 0);
    if (!length)
        return NULL;

    target = FUNC1(length, sizeof(WCHAR));

    if (!FUNC0(CP_UTF8, 0, source, -1, target, length))
    {
        FUNC2(target);
        return NULL;
    }

    return target;
}