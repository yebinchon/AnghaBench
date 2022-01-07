
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int FILE ;


 scalar_t__ EOF ;
 int TEST_ASSERT_EQUAL (int ,int ) ;
 int TEST_ASSERT_NOT_NULL (int *) ;
 int TEST_ASSERT_TRUE (int) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 scalar_t__ fputs (char const*,int *) ;

void test_spiffs_create_file_with_text(const char* name, const char* text)
{
    FILE* f = fopen(name, "wb");
    TEST_ASSERT_NOT_NULL(f);
    TEST_ASSERT_TRUE(fputs(text, f) != EOF);
    TEST_ASSERT_EQUAL(0, fclose(f));
}
