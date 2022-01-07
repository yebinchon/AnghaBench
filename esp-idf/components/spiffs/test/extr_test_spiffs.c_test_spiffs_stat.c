
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 int S_IFDIR ;
 int S_IFREG ;
 int TEST_ASSERT (int) ;
 int TEST_ASSERT_EQUAL (int ,int ) ;
 int TEST_ASSERT_FALSE (int) ;
 int stat (char const*,struct stat*) ;
 int test_spiffs_create_file_with_text (char const*,char*) ;

void test_spiffs_stat(const char* filename)
{
    test_spiffs_create_file_with_text(filename, "foo\n");
    struct stat st;
    TEST_ASSERT_EQUAL(0, stat(filename, &st));
    TEST_ASSERT(st.st_mode & S_IFREG);
    TEST_ASSERT_FALSE(st.st_mode & S_IFDIR);
}
