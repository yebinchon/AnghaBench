
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int buf ;
typedef int FILE ;


 int TEST_ASSERT_EQUAL (int ,int) ;
 int TEST_ASSERT_NOT_NULL (int *) ;
 int fatfs_test_hello_str ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fread (char*,int,int,int *) ;
 int strcmp (int ,char*) ;
 int strlen (int ) ;

void test_fatfs_read_file(const char* filename)
{
    FILE* f = fopen(filename, "r");
    TEST_ASSERT_NOT_NULL(f);
    char buf[32] = { 0 };
    int cb = fread(buf, 1, sizeof(buf), f);
    TEST_ASSERT_EQUAL(strlen(fatfs_test_hello_str), cb);
    TEST_ASSERT_EQUAL(0, strcmp(fatfs_test_hello_str, buf));
    TEST_ASSERT_EQUAL(0, fclose(f));
}
