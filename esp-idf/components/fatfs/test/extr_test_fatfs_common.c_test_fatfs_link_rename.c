
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int name_src ;
typedef int name_dst ;
typedef int name_copy ;
typedef int FILE ;


 int EOF ;
 int SEEK_END ;
 int TEST_ASSERT_EQUAL (int,int ) ;
 int TEST_ASSERT_NOT_EQUAL (int ,int ) ;
 int TEST_ASSERT_NOT_NULL (int *) ;
 int TEST_ASSERT_NULL (int *) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fputs (char const*,int *) ;
 int fseek (int *,int ,int ) ;
 int ftell (int *) ;
 int link (char*,char*) ;
 int rename (char*,char*) ;
 int snprintf (char*,int,char*,char const*) ;
 int unlink (char*) ;

void test_fatfs_link_rename(const char* filename_prefix)
{
    char name_copy[64];
    char name_dst[64];
    char name_src[64];
    snprintf(name_copy, sizeof(name_copy), "%s_cpy.txt", filename_prefix);
    snprintf(name_dst, sizeof(name_dst), "%s_dst.txt", filename_prefix);
    snprintf(name_src, sizeof(name_src), "%s_src.txt", filename_prefix);

    unlink(name_copy);
    unlink(name_dst);
    unlink(name_src);

    FILE* f = fopen(name_src, "w+");
    TEST_ASSERT_NOT_NULL(f);
    const char* str = "0123456789";
    for (int i = 0; i < 4000; ++i) {
        TEST_ASSERT_NOT_EQUAL(EOF, fputs(str, f));
    }
    TEST_ASSERT_EQUAL(0, fclose(f));
    TEST_ASSERT_EQUAL(0, link(name_src, name_copy));
    FILE* fcopy = fopen(name_copy, "r");
    TEST_ASSERT_NOT_NULL(fcopy);
    TEST_ASSERT_EQUAL(0, fseek(fcopy, 0, SEEK_END));
    TEST_ASSERT_EQUAL(40000, ftell(fcopy));
    TEST_ASSERT_EQUAL(0, fclose(fcopy));
    TEST_ASSERT_EQUAL(0, rename(name_copy, name_dst));
    TEST_ASSERT_NULL(fopen(name_copy, "r"));
    FILE* fdst = fopen(name_dst, "r");
    TEST_ASSERT_NOT_NULL(fdst);
    TEST_ASSERT_EQUAL(0, fseek(fdst, 0, SEEK_END));
    TEST_ASSERT_EQUAL(40000, ftell(fdst));
    TEST_ASSERT_EQUAL(0, fclose(fdst));
}
