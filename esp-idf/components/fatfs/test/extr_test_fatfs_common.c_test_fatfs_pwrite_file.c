
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int O_CREAT ;
 int O_TRUNC ;
 int O_WRONLY ;
 int TEST_ASSERT_EQUAL (int ,int ) ;
 int TEST_ASSERT_NOT_EQUAL (int,int) ;
 int close (int) ;
 int open (char const*,int) ;
 int strlen (char*) ;
 int test_file_content (char const*,char*) ;
 int test_pwrite (char const*,int ,char*) ;

void test_fatfs_pwrite_file(const char *filename)
{
    int fd = open(filename, O_WRONLY | O_CREAT | O_TRUNC);
    TEST_ASSERT_NOT_EQUAL(-1, fd);
    TEST_ASSERT_EQUAL(0, close(fd));

    test_pwrite(filename, 0, "Hello");
    test_file_content(filename, "Hello");

    test_pwrite(filename, strlen("Hello"), ", world!");
    test_file_content(filename, "Hello, world!");
    test_pwrite(filename, strlen("Hello, "), "Dolly");
    test_file_content(filename, "Hello, Dolly!");
}
