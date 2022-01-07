
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int O_RDONLY ;
 int TEST_ASSERT_EQUAL (int,int) ;
 int TEST_ASSERT_NOT_EQUAL (int,int const) ;
 int close (int const) ;
 scalar_t__ fatfs_test_hello_str ;
 int memset (char*,int ,int) ;
 int open (char const*,int ) ;
 int pread (int const,char*,int,int) ;
 int read (int const,char*,int) ;
 int strcmp (scalar_t__,char*) ;
 int strlen (scalar_t__) ;

void test_fatfs_pread_file(const char* filename)
{
    char buf[32] = { 0 };
    const int fd = open(filename, O_RDONLY);
    TEST_ASSERT_NOT_EQUAL(-1, fd);

    int r = pread(fd, buf, sizeof(buf), 0);
    TEST_ASSERT_EQUAL(0, strcmp(fatfs_test_hello_str, buf));
    TEST_ASSERT_EQUAL(strlen(fatfs_test_hello_str), r);

    memset(buf, 0, sizeof(buf));
    r = pread(fd, buf, sizeof(buf), 1);
    TEST_ASSERT_EQUAL(0, strcmp(fatfs_test_hello_str + 1, buf));
    TEST_ASSERT_EQUAL(strlen(fatfs_test_hello_str) - 1, r);

    memset(buf, 0, sizeof(buf));
    r = pread(fd, buf, sizeof(buf), 5);
    TEST_ASSERT_EQUAL(0, strcmp(fatfs_test_hello_str + 5, buf));
    TEST_ASSERT_EQUAL(strlen(fatfs_test_hello_str) - 5, r);



    memset(buf, 0, sizeof(buf));
    r = read(fd, buf, sizeof(buf));
    TEST_ASSERT_EQUAL(0, strcmp(fatfs_test_hello_str, buf));
    TEST_ASSERT_EQUAL(strlen(fatfs_test_hello_str), r);

    memset(buf, 0, sizeof(buf));
    r = pread(fd, buf, sizeof(buf), 10);
    TEST_ASSERT_EQUAL(0, strcmp(fatfs_test_hello_str + 10, buf));
    TEST_ASSERT_EQUAL(strlen(fatfs_test_hello_str) - 10, r);

    memset(buf, 0, sizeof(buf));
    r = pread(fd, buf, sizeof(buf), strlen(fatfs_test_hello_str) + 1);
    TEST_ASSERT_EQUAL(0, r);

    TEST_ASSERT_EQUAL(0, close(fd));
}
