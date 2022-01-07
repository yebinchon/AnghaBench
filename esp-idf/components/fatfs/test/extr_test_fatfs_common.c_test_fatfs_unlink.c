
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int TEST_ASSERT_EQUAL (int ,int ) ;
 int TEST_ASSERT_NULL (int ) ;
 int fopen (char const*,char*) ;
 int test_fatfs_create_file_with_text (char const*,char*) ;
 int unlink (char const*) ;

void test_fatfs_unlink(const char* filename)
{
    test_fatfs_create_file_with_text(filename, "unlink\n");

    TEST_ASSERT_EQUAL(0, unlink(filename));

    TEST_ASSERT_NULL(fopen(filename, "r"));
}
