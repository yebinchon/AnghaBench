
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int output ;
typedef int input ;
typedef int FILE ;


 int EPERM ;
 int TEST_ASSERT_EQUAL (int,int) ;
 int TEST_ASSERT_EQUAL_STRING_LEN (char const*,char*,int) ;
 int TEST_ASSERT_NOT_NULL (int *) ;
 int errno ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fprintf (int *,char const*) ;
 int fread (char*,int,int,int *) ;
 int memset (char*,int ,int) ;
 int strlen (char const*) ;
 int truncate (char const*,int) ;

void test_fatfs_truncate_file(const char* filename)
{
    int read = 0;
    int truncated_len = 0;

    const char input[] = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
    char output[sizeof(input)];

    FILE* f = fopen(filename, "wb");

    TEST_ASSERT_NOT_NULL(f);
    TEST_ASSERT_EQUAL(strlen(input), fprintf(f, input));

    TEST_ASSERT_EQUAL(0, fclose(f));



    TEST_ASSERT_EQUAL(-1, truncate(filename, strlen(input) + 1));
    TEST_ASSERT_EQUAL(errno, EPERM);

    TEST_ASSERT_EQUAL(-1, truncate(filename, -1));
    TEST_ASSERT_EQUAL(errno, EPERM);



    const char truncated_1[] = "ABCDEFGHIJ";
    truncated_len = strlen(truncated_1);

    TEST_ASSERT_EQUAL(0, truncate(filename, truncated_len));

    f = fopen(filename, "rb");
    TEST_ASSERT_NOT_NULL(f);

    memset(output, 0, sizeof(output));
    read = fread(output, 1, sizeof(output), f);

    TEST_ASSERT_EQUAL(truncated_len, read);
    TEST_ASSERT_EQUAL_STRING_LEN(truncated_1, output, truncated_len);

    TEST_ASSERT_EQUAL(0, fclose(f));




    TEST_ASSERT_EQUAL(-1, truncate(filename, truncated_len + 1));
    TEST_ASSERT_EQUAL(EPERM, errno);

    TEST_ASSERT_EQUAL(-1, truncate(filename, strlen(input)));
    TEST_ASSERT_EQUAL(EPERM, errno);

    TEST_ASSERT_EQUAL(-1, truncate(filename, strlen(input) + 1));
    TEST_ASSERT_EQUAL(EPERM, errno);

    TEST_ASSERT_EQUAL(-1, truncate(filename, -1));
    TEST_ASSERT_EQUAL(EPERM, errno);



    const char truncated_2[] = "ABCDE";
    truncated_len = strlen(truncated_2);

    TEST_ASSERT_EQUAL(0, truncate(filename, truncated_len));

    f = fopen(filename, "rb");
    TEST_ASSERT_NOT_NULL(f);

    memset(output, 0, sizeof(output));
    read = fread(output, 1, sizeof(output), f);

    TEST_ASSERT_EQUAL(truncated_len, read);
    TEST_ASSERT_EQUAL_STRING_LEN(truncated_2, output, truncated_len);

    TEST_ASSERT_EQUAL(0, fclose(f));
}
