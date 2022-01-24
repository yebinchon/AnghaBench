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
typedef  int /*<<< orphan*/  wchar_t ;

/* Variables and functions */
 int /*<<< orphan*/  CP_UTF8 ; 
 int FUNC0 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,char*,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC1 (int) ; 

__attribute__((used)) static char *FUNC2(wchar_t *w)
{
    char *s = NULL;
    int l = FUNC0(CP_UTF8, 0, w, -1, 0, 0, 0, 0);
    s = FUNC1(l);
    if (s)
        FUNC0(CP_UTF8, 0, w, -1, s, l, 0, 0);
    return s;
}