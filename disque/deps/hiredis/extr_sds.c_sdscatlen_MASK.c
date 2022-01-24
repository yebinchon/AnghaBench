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
 int /*<<< orphan*/  FUNC0 (char*,void const*,size_t) ; 
 char* FUNC1 (char*,size_t) ; 
 size_t FUNC2 (char*) ; 
 int /*<<< orphan*/  FUNC3 (char*,size_t) ; 

sds FUNC4(sds s, const void *t, size_t len) {
    size_t curlen = FUNC2(s);

    s = FUNC1(s,len);
    if (s == NULL) return NULL;
    FUNC0(s+curlen, t, len);
    FUNC3(s, curlen+len);
    s[curlen+len] = '\0';
    return s;
}