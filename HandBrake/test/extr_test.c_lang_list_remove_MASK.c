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
typedef  int /*<<< orphan*/  hb_value_array_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int) ; 
 int FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int) ; 
 char* FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char const*,char const*,int) ; 

__attribute__((used)) static void FUNC5(hb_value_array_t *list, const char *lang)
{
    int count = FUNC1(list);
    int ii;
    for (ii = count - 1; ii >= 0; ii--)
    {
        const char *tmp = FUNC3(FUNC0(list, ii));
        if (!FUNC4(lang, tmp, 4))
            FUNC2(list, ii);
    }
}