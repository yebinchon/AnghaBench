
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct tm {int tm_year; int tm_mon; int tm_mday; int tm_hour; int tm_min; int tm_sec; } ;
struct timeval {scalar_t__ tv_sec; } ;
struct stat {int st_mode; scalar_t__ st_mtime; } ;
typedef int st ;


 int S_IFDIR ;
 int S_IFREG ;
 int TEST_ASSERT (int) ;
 int TEST_ASSERT_EQUAL (int ,int ) ;
 int TEST_ASSERT_FALSE (int) ;
 int abs (scalar_t__) ;
 char* asctime (struct tm*) ;
 int localtime_r (scalar_t__*,struct tm*) ;
 int memset (struct stat*,int ,int) ;
 scalar_t__ mktime (struct tm*) ;
 int printf (char*,char*) ;
 int settimeofday (struct timeval*,int *) ;
 int stat (char const*,struct stat*) ;
 int test_fatfs_create_file_with_text (char const*,char*) ;

void test_fatfs_stat(const char* filename, const char* root_dir)
{
    struct tm tm;
    tm.tm_year = 2017 - 1900;
    tm.tm_mon = 11;
    tm.tm_mday = 8;
    tm.tm_hour = 19;
    tm.tm_min = 51;
    tm.tm_sec = 10;
    time_t t = mktime(&tm);
    printf("Setting time: %s", asctime(&tm));
    struct timeval now = { .tv_sec = t };
    settimeofday(&now, ((void*)0));

    test_fatfs_create_file_with_text(filename, "foo\n");

    struct stat st;
    TEST_ASSERT_EQUAL(0, stat(filename, &st));
    time_t mtime = st.st_mtime;
    struct tm mtm;
    localtime_r(&mtime, &mtm);
    printf("File time: %s", asctime(&mtm));
    TEST_ASSERT(abs(mtime - t) < 2);

    TEST_ASSERT(st.st_mode & S_IFREG);
    TEST_ASSERT_FALSE(st.st_mode & S_IFDIR);

    memset(&st, 0, sizeof(st));
    TEST_ASSERT_EQUAL(0, stat(root_dir, &st));
    TEST_ASSERT(st.st_mode & S_IFDIR);
    TEST_ASSERT_FALSE(st.st_mode & S_IFREG);
}
