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
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (char*,char*) ; 
 int FUNC2 (char*) ; 

__attribute__((used)) static char *FUNC3(char *filename, char suffix) {
    char *r = FUNC1("%s", filename);
    char *p = r + FUNC2(r) - 1;
    if (*p != 'c')
        FUNC0("filename suffix is not .c");
    *p = suffix;
    return r;
}