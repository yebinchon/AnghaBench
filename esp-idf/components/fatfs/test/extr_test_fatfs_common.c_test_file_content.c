
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;


 int O_RDONLY ;
 int TEST_ASSERT_EQUAL (int ,int ) ;
 int TEST_ASSERT_NOT_EQUAL (int,int const) ;
 int close (int const) ;
 int open (char const*,int ) ;
 int read (int const,char*,int) ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static void test_file_content(const char *filename, const char *msg)
{
    char buf[32] = { 0 };
    const int fd = open(filename, O_RDONLY);
    TEST_ASSERT_NOT_EQUAL(-1, fd);

    int r = read(fd, buf, sizeof(buf));
    TEST_ASSERT_NOT_EQUAL(-1, r);
    TEST_ASSERT_EQUAL(0, strcmp(msg, buf));

    TEST_ASSERT_EQUAL(0, close(fd));
}
