
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST_ASSERT_EQUAL_MESSAGE (int,int ,char const*) ;
 int TEST_ASSERT_EQUAL_UINT8_ARRAY_MESSAGE (char const*,char*,int,char const*) ;
 int read (int,char*,int) ;
 int strlen (char const*) ;

__attribute__((used)) static inline void test_read(int fd, const char *str, const char *msg)
{
    char buf[strlen(str)];
    TEST_ASSERT_EQUAL_MESSAGE(strlen(str), read(fd, buf, strlen(str)), msg);
    TEST_ASSERT_EQUAL_UINT8_ARRAY_MESSAGE(str, buf, strlen(str), msg);
}
