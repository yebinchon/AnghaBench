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
struct stat {int st_size; } ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC2 (char*,char*) ; 
 int FUNC3 (char*,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,struct stat*) ; 
 char* FUNC5 (int) ; 
 char** FUNC6 (char*) ; 

__attribute__((used)) static char **FUNC7(char *file) {
    FILE *fp = FUNC2(file, "r");
    if (!fp)
        return NULL;
    struct stat st;
    FUNC4(FUNC1(fp), &st);
    char *buf = FUNC5(st.st_size + 1);
    if (FUNC3(buf, 1, st.st_size, fp) != st.st_size) {
        FUNC0(fp);
        return NULL;
    }
    FUNC0(fp);
    buf[st.st_size] = '\0';
    return FUNC6(buf);
}