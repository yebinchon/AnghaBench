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
typedef  scalar_t__ time_t ;
struct tm {int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; } ;
struct timeval {scalar_t__ tv_sec; } ;
struct stat {int st_mode; scalar_t__ st_mtime; } ;
typedef  int /*<<< orphan*/  st ;

/* Variables and functions */
 int S_IFDIR ; 
 int S_IFREG ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 int FUNC3 (scalar_t__) ; 
 char* FUNC4 (struct tm*) ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__*,struct tm*) ; 
 int /*<<< orphan*/  FUNC6 (struct stat*,int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC7 (struct tm*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC11 (char const*,char*) ; 

void FUNC12(const char* filename, const char* root_dir)
{
    struct tm tm;
    tm.tm_year = 2017 - 1900;
    tm.tm_mon = 11;
    tm.tm_mday = 8;
    tm.tm_hour = 19;
    tm.tm_min = 51;
    tm.tm_sec = 10;
    time_t t = FUNC7(&tm);
    FUNC8("Setting time: %s", FUNC4(&tm));
    struct timeval now = { .tv_sec = t };
    FUNC9(&now, NULL);

    FUNC11(filename, "foo\n");

    struct stat st;
    FUNC1(0, FUNC10(filename, &st));
    time_t mtime = st.st_mtime;
    struct tm mtm;
    FUNC5(&mtime, &mtm);
    FUNC8("File time: %s", FUNC4(&mtm));
    FUNC0(FUNC3(mtime - t) < 2);    // fatfs library stores time with 2 second precision

    FUNC0(st.st_mode & S_IFREG);
    FUNC2(st.st_mode & S_IFDIR);

    FUNC6(&st, 0, sizeof(st));
    FUNC1(0, FUNC10(root_dir, &st));
    FUNC0(st.st_mode & S_IFDIR);
    FUNC2(st.st_mode & S_IFREG);
}