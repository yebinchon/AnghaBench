
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST_ASSERT_EQUAL (int,int ) ;
 int unlink (char const*) ;

__attribute__((used)) static inline void test_fatfs_delete_file(const char *name)
{
    int ret = unlink(name);
    TEST_ASSERT_EQUAL(ret, 0);
}
