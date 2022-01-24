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
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 size_t FUNC2 (char const*,size_t,int,int /*<<< orphan*/ *) ; 

bool FUNC3(const char *path, const char *buf, size_t len) {
    FILE *file = FUNC1(path, "w");
    if (!file) {
        return false;
    }
    size_t n = FUNC2(buf, len, 1, file);
    FUNC0(file);
    return n == 1;
}