
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

__attribute__((used)) static inline void test_fatfs_create_file(const char *name)
{
    int fd = open(name, O_WRONLY | O_CREAT | O_TRUNC);
    TEST_ASSERT_NOT_EQUAL(fd, -1);
    TEST_ASSERT_EQUAL(0, close(fd));
}
