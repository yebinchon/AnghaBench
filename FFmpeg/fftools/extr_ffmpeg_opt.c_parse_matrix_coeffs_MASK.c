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
typedef  int /*<<< orphan*/  uint16_t ;

/* Variables and functions */
 int /*<<< orphan*/  AV_LOG_FATAL ; 
 int /*<<< orphan*/  FUNC0 (char const*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,char*,char const*,int) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 char* FUNC3 (char const*,char) ; 

__attribute__((used)) static void FUNC4(uint16_t *dest, const char *str)
{
    int i;
    const char *p = str;
    for (i = 0;; i++) {
        dest[i] = FUNC0(p);
        if (i == 63)
            break;
        p = FUNC3(p, ',');
        if (!p) {
            FUNC1(NULL, AV_LOG_FATAL, "Syntax error in matrix \"%s\" at coeff %d\n", str, i);
            FUNC2(1);
        }
        p++;
    }
}