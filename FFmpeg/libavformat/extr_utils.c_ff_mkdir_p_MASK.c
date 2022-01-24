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
 char* FUNC1 (char const*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int FUNC3 (char*,int) ; 

int FUNC4(const char *path)
{
    int ret = 0;
    char *temp = FUNC1(path);
    char *pos = temp;
    char tmp_ch = '\0';

    if (!path || !temp) {
        return -1;
    }

    if (!FUNC2(temp, "/", 1) || !FUNC2(temp, "\\", 1)) {
        pos++;
    } else if (!FUNC2(temp, "./", 2) || !FUNC2(temp, ".\\", 2)) {
        pos += 2;
    }

    for ( ; *pos != '\0'; ++pos) {
        if (*pos == '/' || *pos == '\\') {
            tmp_ch = *pos;
            *pos = '\0';
            ret = FUNC3(temp, 0755);
            *pos = tmp_ch;
        }
    }

    if ((*(pos - 1) != '/') || (*(pos - 1) != '\\')) {
        ret = FUNC3(temp, 0755);
    }

    FUNC0(temp);
    return ret;
}