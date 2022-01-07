
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ref_buf ;
typedef int buf ;
typedef int FILE ;


 int SEEK_CUR ;
 int SEEK_END ;
 int SEEK_SET ;
 int TEST_ASSERT_EQUAL (int,int ) ;
 int TEST_ASSERT_EQUAL_INT8_ARRAY (char const*,char*,int) ;
 int TEST_ASSERT_NOT_NULL (int *) ;
 int fclose (int *) ;
 int fgetc (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int *,char*) ;
 int fread (char*,int,int,int *) ;
 int fseek (int *,int,int ) ;
 int ftell (int *) ;

void test_spiffs_lseek(const char* filename)
{
    FILE* f = fopen(filename, "wb+");
    TEST_ASSERT_NOT_NULL(f);
    TEST_ASSERT_EQUAL(11, fprintf(f, "0123456789\n"));
    TEST_ASSERT_EQUAL(0, fseek(f, -2, SEEK_CUR));
    TEST_ASSERT_EQUAL('9', fgetc(f));
    TEST_ASSERT_EQUAL(0, fseek(f, 3, SEEK_SET));
    TEST_ASSERT_EQUAL('3', fgetc(f));
    TEST_ASSERT_EQUAL(0, fseek(f, -3, SEEK_END));
    TEST_ASSERT_EQUAL('8', fgetc(f));
    TEST_ASSERT_EQUAL(0, fseek(f, 0, SEEK_END));
    TEST_ASSERT_EQUAL(11, ftell(f));
    TEST_ASSERT_EQUAL(4, fprintf(f, "abc\n"));
    TEST_ASSERT_EQUAL(0, fseek(f, 0, SEEK_END));
    TEST_ASSERT_EQUAL(15, ftell(f));
    TEST_ASSERT_EQUAL(0, fseek(f, 0, SEEK_SET));
    char buf[20];
    TEST_ASSERT_EQUAL(15, fread(buf, 1, sizeof(buf), f));
    const char ref_buf[] = "0123456789\nabc\n";
    TEST_ASSERT_EQUAL_INT8_ARRAY(ref_buf, buf, sizeof(ref_buf) - 1);

    TEST_ASSERT_EQUAL(0, fclose(f));
}
