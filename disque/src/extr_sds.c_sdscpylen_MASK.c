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
typedef  char* sds ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char const*,size_t) ; 
 char* FUNC1 (char*,scalar_t__) ; 
 size_t FUNC2 (char*) ; 
 scalar_t__ FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,size_t) ; 

sds FUNC5(sds s, const char *t, size_t len) {
    if (FUNC2(s) < len) {
        s = FUNC1(s,len-FUNC3(s));
        if (s == NULL) return NULL;
    }
    FUNC0(s, t, len);
    s[len] = '\0';
    FUNC4(s, len);
    return s;
}