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
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC1 (char const*,char*) ; 
 int FUNC2 (char*,long,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 long FUNC5 (int /*<<< orphan*/ *) ; 
 char* FUNC6 (long) ; 

char *FUNC7(const char *path) {
    FILE *file = FUNC1(path, "rb");
    if (!file) {
        return NULL;
    }
    FUNC4(file, 0, SEEK_END);
    long len = FUNC5(file);
    FUNC4(file, 0, SEEK_SET);
    char *buf = FUNC6(len + 1);
    if (len && FUNC2(buf, len, 1, file) != 1) {
        FUNC0(file);
        FUNC3(buf);
        return NULL;
    }
    FUNC0(file);   
    buf[len] = 0;
    return buf;
}