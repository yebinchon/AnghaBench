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
typedef  int time_t ;
struct utimbuf {void* modtime; int /*<<< orphan*/  actime; } ;
struct tm {int tm_mon; int tm_mday; int tm_year; int tm_hour; int tm_min; int tm_sec; } ;
struct timeval {int tv_sec; } ;
struct stat {int st_mtime; } ;

/* Variables and functions */
 int EINVAL ; 
 int /*<<< orphan*/  FUNC0 (int) ; 
 int /*<<< orphan*/  FUNC1 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (void*,int) ; 
 int /*<<< orphan*/  FUNC3 (void*,int) ; 
 char* FUNC4 (struct tm*) ; 
 char* FUNC5 (int*) ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC6 (struct tm*,int /*<<< orphan*/ ,int) ; 
 void* FUNC7 (struct tm*) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 int /*<<< orphan*/  FUNC9 (struct timeval*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC11 (char const*,char*) ; 
 int /*<<< orphan*/  FUNC12 (char const*,struct utimbuf*) ; 

void FUNC13(const char* filename, const char* root_dir)
{
    struct stat achieved_stat;
    struct tm desired_tm;
    struct utimbuf desired_time = {
        .actime = 0, // access time is not supported
        .modtime = 0,
    };
    time_t false_now = 0;
    FUNC6(&desired_tm, 0, sizeof(struct tm));

    {
        // Setting up a false actual time - used when the file is created and for modification with the current time
        desired_tm.tm_mon = 10 - 1;
        desired_tm.tm_mday = 31;
        desired_tm.tm_year = 2018 - 1900;
        desired_tm.tm_hour = 10;
        desired_tm.tm_min = 35;
        desired_tm.tm_sec = 23;

        false_now = FUNC7(&desired_tm);

        struct timeval now = { .tv_sec = false_now };
        FUNC9(&now, NULL);
    }
    FUNC11(filename, "");

    // 00:00:00. January 1st, 1980 - FATFS cannot handle earlier dates
    desired_tm.tm_mon = 1 - 1;
    desired_tm.tm_mday = 1;
    desired_tm.tm_year = 1980 - 1900;
    desired_tm.tm_hour = 0;
    desired_tm.tm_min = 0;
    desired_tm.tm_sec = 0;
    FUNC8("Testing mod. time: %s", FUNC4(&desired_tm));
    desired_time.modtime = FUNC7(&desired_tm);
    FUNC1(0, FUNC12(filename, &desired_time));
    FUNC1(0, FUNC10(filename, &achieved_stat));
    FUNC2(desired_time.modtime, achieved_stat.st_mtime);

    // current time
    FUNC1(0, FUNC12(filename, NULL));
    FUNC1(0, FUNC10(filename, &achieved_stat));
    FUNC8("Mod. time changed to (false actual time): %s", FUNC5(&achieved_stat.st_mtime));
    FUNC3(desired_time.modtime, achieved_stat.st_mtime);
    FUNC0(false_now - achieved_stat.st_mtime <= 2); // two seconds of tolerance are given

    // 23:59:08. December 31st, 2037
    desired_tm.tm_mon = 12 - 1;
    desired_tm.tm_mday = 31;
    desired_tm.tm_year = 2037 - 1900;
    desired_tm.tm_hour = 23;
    desired_tm.tm_min = 59;
    desired_tm.tm_sec = 8;
    FUNC8("Testing mod. time: %s", FUNC4(&desired_tm));
    desired_time.modtime = FUNC7(&desired_tm);
    FUNC1(0, FUNC12(filename, &desired_time));
    FUNC1(0, FUNC10(filename, &achieved_stat));
    FUNC2(desired_time.modtime, achieved_stat.st_mtime);

    //WARNING: it has the Unix Millenium bug (Y2K38)

    // 00:00:00. January 1st, 1970 - FATFS cannot handle years before 1980
    desired_tm.tm_mon = 1 - 1;
    desired_tm.tm_mday = 1;
    desired_tm.tm_year = 1970 - 1900;
    desired_tm.tm_hour = 0;
    desired_tm.tm_min = 0;
    desired_tm.tm_sec = 0;
    FUNC8("Testing mod. time: %s", FUNC4(&desired_tm));
    desired_time.modtime = FUNC7(&desired_tm);
    FUNC1(-1, FUNC12(filename, &desired_time));
    FUNC1(EINVAL, errno);
}