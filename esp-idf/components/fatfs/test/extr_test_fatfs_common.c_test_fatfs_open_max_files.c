
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int name ;
typedef int FILE ;


 int TEST_ASSERT_NOT_NULL (int *) ;
 int ** calloc (size_t,int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int free (int **) ;
 int snprintf (char*,int,char*,char const*,size_t) ;

void test_fatfs_open_max_files(const char* filename_prefix, size_t files_count)
{
    FILE** files = calloc(files_count, sizeof(FILE*));
    for (size_t i = 0; i < files_count; ++i) {
        char name[32];
        snprintf(name, sizeof(name), "%s_%d.txt", filename_prefix, i);
        files[i] = fopen(name, "w");
        TEST_ASSERT_NOT_NULL(files[i]);
    }

    for (size_t i = 0; i < files_count; ++i) {
        fclose(files[i]);
    }
    free(files);
}
