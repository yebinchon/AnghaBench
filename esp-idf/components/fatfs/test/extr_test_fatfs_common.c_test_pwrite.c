
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int off_t ;


 int O_WRONLY ;
 int SEEK_CUR ;
 int SEEK_END ;
 int TEST_ASSERT_EQUAL (int const,int const) ;
 int TEST_ASSERT_NOT_EQUAL (int,int const) ;
 int const close (int const) ;
 int const lseek (int const,int ,int ) ;
 int open (char const*,int ) ;
 int pwrite (int const,char const*,int const,int) ;
 int const strlen (char const*) ;

__attribute__((used)) static void test_pwrite(const char *filename, off_t offset, const char *msg)
{
    const int fd = open(filename, O_WRONLY);
    TEST_ASSERT_NOT_EQUAL(-1, fd);

    const off_t current_pos = lseek(fd, 0, SEEK_END);

    const int r = pwrite(fd, msg, strlen(msg), offset);
    TEST_ASSERT_EQUAL(strlen(msg), r);

    TEST_ASSERT_EQUAL(current_pos, lseek(fd, 0, SEEK_CUR));

    TEST_ASSERT_EQUAL(0, close(fd));
}
