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
struct tm {int dummy; } ;
struct stat {int /*<<< orphan*/  st_mtime; } ;

/* Variables and functions */
 scalar_t__ FUNC0 (char const*,struct stat*) ; 
 struct tm* FUNC1 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC2 (char const*,struct tm*) ; 
 char* FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char const*,struct tm*) ; 
 int FUNC5 (char const*) ; 

__attribute__((used)) static char*
FUNC6(const char *pattern, const char *metaValue, const char *file)
{
    char date[11] = "";
    if (metaValue != NULL && FUNC5(metaValue) > 1)
    {
        struct tm tm;
        if (FUNC2(metaValue, &tm))
        {
            FUNC4(date, 11, pattern, &tm);
        }
    }
    else
    {
        struct stat stbuf;
        if (FUNC0(file, &stbuf) == 0){
            struct tm *tm;
            tm = FUNC1(&(stbuf.st_mtime));
            FUNC4(date, 11, pattern, tm);
        }
    }
    return FUNC3(date);
}