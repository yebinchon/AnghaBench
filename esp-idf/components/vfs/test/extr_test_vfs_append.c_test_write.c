
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST_ASSERT_EQUAL_MESSAGE (int ,int ,char const*) ;
 int strlen (char const*) ;
 int write (int,char const*,int ) ;

__attribute__((used)) static inline void test_write(int fd, const char *str, const char *msg)
{
    TEST_ASSERT_EQUAL_MESSAGE(strlen(str), write(fd, str, strlen(str)), msg);
}
