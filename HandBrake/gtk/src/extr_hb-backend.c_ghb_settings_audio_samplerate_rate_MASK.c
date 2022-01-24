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
typedef  int /*<<< orphan*/  GhbValue ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int /*<<< orphan*/  const*,char const*) ; 
 int FUNC2 (char*) ; 

int
FUNC3(const GhbValue *settings, const char *name)
{
    int result;
    char *rate_id = FUNC1(settings, name);
    result = FUNC2(rate_id);
    FUNC0(rate_id);
    return result;
}