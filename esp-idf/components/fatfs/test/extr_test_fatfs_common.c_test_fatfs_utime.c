
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int time_t ;
struct utimbuf {void* modtime; int actime; } ;
struct tm {int tm_mon; int tm_mday; int tm_year; int tm_hour; int tm_min; int tm_sec; } ;
struct timeval {int tv_sec; } ;
struct stat {int st_mtime; } ;


 int EINVAL ;
 int TEST_ASSERT (int) ;
 int TEST_ASSERT_EQUAL (int,int ) ;
 int TEST_ASSERT_EQUAL_UINT32 (void*,int) ;
 int TEST_ASSERT_NOT_EQUAL (void*,int) ;
 char* asctime (struct tm*) ;
 char* ctime (int*) ;
 int errno ;
 int memset (struct tm*,int ,int) ;
 void* mktime (struct tm*) ;
 int printf (char*,char*) ;
 int settimeofday (struct timeval*,int *) ;
 int stat (char const*,struct stat*) ;
 int test_fatfs_create_file_with_text (char const*,char*) ;
 int utime (char const*,struct utimbuf*) ;

void test_fatfs_utime(const char* filename, const char* root_dir)
{
    struct stat achieved_stat;
    struct tm desired_tm;
    struct utimbuf desired_time = {
        .actime = 0,
        .modtime = 0,
    };
    time_t false_now = 0;
    memset(&desired_tm, 0, sizeof(struct tm));

    {

        desired_tm.tm_mon = 10 - 1;
        desired_tm.tm_mday = 31;
        desired_tm.tm_year = 2018 - 1900;
        desired_tm.tm_hour = 10;
        desired_tm.tm_min = 35;
        desired_tm.tm_sec = 23;

        false_now = mktime(&desired_tm);

        struct timeval now = { .tv_sec = false_now };
        settimeofday(&now, ((void*)0));
    }
    test_fatfs_create_file_with_text(filename, "");


    desired_tm.tm_mon = 1 - 1;
    desired_tm.tm_mday = 1;
    desired_tm.tm_year = 1980 - 1900;
    desired_tm.tm_hour = 0;
    desired_tm.tm_min = 0;
    desired_tm.tm_sec = 0;
    printf("Testing mod. time: %s", asctime(&desired_tm));
    desired_time.modtime = mktime(&desired_tm);
    TEST_ASSERT_EQUAL(0, utime(filename, &desired_time));
    TEST_ASSERT_EQUAL(0, stat(filename, &achieved_stat));
    TEST_ASSERT_EQUAL_UINT32(desired_time.modtime, achieved_stat.st_mtime);


    TEST_ASSERT_EQUAL(0, utime(filename, ((void*)0)));
    TEST_ASSERT_EQUAL(0, stat(filename, &achieved_stat));
    printf("Mod. time changed to (false actual time): %s", ctime(&achieved_stat.st_mtime));
    TEST_ASSERT_NOT_EQUAL(desired_time.modtime, achieved_stat.st_mtime);
    TEST_ASSERT(false_now - achieved_stat.st_mtime <= 2);


    desired_tm.tm_mon = 12 - 1;
    desired_tm.tm_mday = 31;
    desired_tm.tm_year = 2037 - 1900;
    desired_tm.tm_hour = 23;
    desired_tm.tm_min = 59;
    desired_tm.tm_sec = 8;
    printf("Testing mod. time: %s", asctime(&desired_tm));
    desired_time.modtime = mktime(&desired_tm);
    TEST_ASSERT_EQUAL(0, utime(filename, &desired_time));
    TEST_ASSERT_EQUAL(0, stat(filename, &achieved_stat));
    TEST_ASSERT_EQUAL_UINT32(desired_time.modtime, achieved_stat.st_mtime);




    desired_tm.tm_mon = 1 - 1;
    desired_tm.tm_mday = 1;
    desired_tm.tm_year = 1970 - 1900;
    desired_tm.tm_hour = 0;
    desired_tm.tm_min = 0;
    desired_tm.tm_sec = 0;
    printf("Testing mod. time: %s", asctime(&desired_tm));
    desired_time.modtime = mktime(&desired_tm);
    TEST_ASSERT_EQUAL(-1, utime(filename, &desired_time));
    TEST_ASSERT_EQUAL(EINVAL, errno);
}
