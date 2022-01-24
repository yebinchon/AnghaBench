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
 size_t FUNC0 (int,int) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char const*,size_t) ; 

void FUNC3(const char *start, const char *end) {
    char path[MAX_PATH];
    size_t len = FUNC0(end - start, MAX_PATH - 1);
    FUNC2(path, start, len);
    path[len] = 0;
    FUNC1(path);
}