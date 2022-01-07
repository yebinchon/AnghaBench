
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST_ASSERT_EQUAL_MESSAGE (int ,int ,char const*) ;
 int read (int,char*,int) ;

__attribute__((used)) static inline void test_read_fails(int fd, const char *msg)
{
    char buf;
    TEST_ASSERT_EQUAL_MESSAGE(0, read(fd, &buf, 1), msg);
}
