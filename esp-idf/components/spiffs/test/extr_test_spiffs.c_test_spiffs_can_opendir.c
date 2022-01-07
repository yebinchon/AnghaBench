
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dirent {int d_name; } ;
typedef int name_dir_file ;
typedef int DIR ;


 int TEST_ASSERT_EQUAL (int ,int ) ;
 int TEST_ASSERT_NOT_NULL (int *) ;
 int TEST_ASSERT_TRUE (int) ;
 int closedir (int *) ;
 int * opendir (char const*) ;
 struct dirent* readdir (int *) ;
 int snprintf (char*,int,char*,char const*,char const*) ;
 scalar_t__ strcasecmp (int ,char const*) ;
 int test_spiffs_create_file_with_text (char*,char*) ;
 int unlink (char*) ;

void test_spiffs_can_opendir(const char* path)
{
    char name_dir_file[64];
    const char * file_name = "test_opd.txt";
    snprintf(name_dir_file, sizeof(name_dir_file), "%s/%s", path, file_name);
    unlink(name_dir_file);
    test_spiffs_create_file_with_text(name_dir_file, "test_opendir\n");
    DIR* dir = opendir(path);
    TEST_ASSERT_NOT_NULL(dir);
    bool found = 0;
    while (1) {
        struct dirent* de = readdir(dir);
        if (!de) {
            break;
        }
        if (strcasecmp(de->d_name, file_name) == 0) {
            found = 1;
            break;
        }
    }
    TEST_ASSERT_TRUE(found);
    TEST_ASSERT_EQUAL(0, closedir(dir));
    unlink(name_dir_file);
}
