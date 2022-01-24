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
 long LONG_MIN ; 
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*,char*) ; 
 long FUNC2 (char*,int /*<<< orphan*/ *,int) ; 

__attribute__((used)) static long FUNC3(char *info, char *field) {
    char *value = FUNC1(info,field);
    long l;

    if (!value) return LONG_MIN;
    l = FUNC2(value,NULL,10);
    FUNC0(value);
    return l;
}