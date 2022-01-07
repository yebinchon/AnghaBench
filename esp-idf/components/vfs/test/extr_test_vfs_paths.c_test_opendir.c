
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int called; } ;
typedef TYPE_1__ dummy_vfs_t ;
typedef int DIR ;


 int UNITY_TEST_ASSERT (int,int,char*) ;
 int UNITY_TEST_ASSERT_EQUAL_INT (int,int,int,char*) ;
 int closedir (int *) ;
 int * opendir (char const*) ;

__attribute__((used)) static void test_opendir(dummy_vfs_t* instance, const char* path,
        bool should_be_called, bool should_be_opened, int line)
{
    instance->called = 0;
    DIR* dir = opendir(path);
    UNITY_TEST_ASSERT_EQUAL_INT(should_be_called, instance->called, line,
            "should_be_called check failed");
    if (should_be_called) {
        if (should_be_opened) {
            UNITY_TEST_ASSERT(dir != ((void*)0), line, "should be opened");
        } else {
            UNITY_TEST_ASSERT(dir == 0, line, "should not be opened");
        }
    }
    if (dir) {
        closedir(dir);
    }
}
