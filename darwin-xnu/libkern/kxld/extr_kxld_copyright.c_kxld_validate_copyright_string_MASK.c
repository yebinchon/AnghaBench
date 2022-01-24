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
typedef  int u_long ;
typedef  int /*<<< orphan*/  boolean_t ;

/* Variables and functions */
 int /*<<< orphan*/  FALSE ; 
 int /*<<< orphan*/  TRUE ; 
 int FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (char*,int) ; 
 int /*<<< orphan*/  kCopyrightToken ; 
 int /*<<< orphan*/  kRightsToken ; 
 char* FUNC2 (int) ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 char* FUNC4 (char const*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,char const*,int) ; 

boolean_t 
FUNC6(const char *str)
{
    boolean_t result = FALSE;
    const char *copyright = NULL;
    const char *rights = NULL;
    char *date_str = NULL;
    u_long len = 0;

    copyright = FUNC4(str, kCopyrightToken);
    rights = FUNC4(str, kRightsToken);

    if (!copyright || !rights || copyright > rights) goto finish;

    str = copyright + FUNC0(kCopyrightToken);

    len = rights - str;
    date_str = FUNC2(len+1);
    if (!date_str) goto finish;

    FUNC5(date_str, str, len);
    date_str[len] = '\0';

    if (!FUNC1(date_str, len)) goto finish;

    result = TRUE;
finish:
    if (date_str) FUNC3(date_str, len+1);
    return result;
}