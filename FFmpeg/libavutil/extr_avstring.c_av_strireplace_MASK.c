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
typedef  int /*<<< orphan*/  AVBPrint ;

/* Variables and functions */
 int /*<<< orphan*/  AV_BPRINT_SIZE_UNLIMITED ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char**) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 char* FUNC4 (char const*,char const*) ; 
 size_t FUNC5 (char const*) ; 

char *FUNC6(const char *str, const char *from, const char *to)
{
    char *ret = NULL;
    const char *pstr2, *pstr = str;
    size_t tolen = FUNC5(to), fromlen = FUNC5(from);
    AVBPrint pbuf;

    FUNC2(&pbuf, 1, AV_BPRINT_SIZE_UNLIMITED);
    while ((pstr2 = FUNC4(pstr, from))) {
        FUNC0(&pbuf, pstr, pstr2 - pstr);
        pstr = pstr2 + fromlen;
        FUNC0(&pbuf, to, tolen);
    }
    FUNC0(&pbuf, pstr, FUNC5(pstr));
    if (!FUNC3(&pbuf)) {
        FUNC1(&pbuf, NULL);
    } else {
        FUNC1(&pbuf, &ret);
    }

    return ret;
}