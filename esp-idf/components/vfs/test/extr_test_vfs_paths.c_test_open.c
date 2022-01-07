
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int called; } ;
typedef TYPE_1__ dummy_vfs_t ;


 int O_CREAT ;
 int O_RDWR ;
 int O_TRUNC ;
 int UNITY_TEST_ASSERT (int,int,char*) ;
 int UNITY_TEST_ASSERT_EQUAL_INT (int,int,int,char*) ;
 int __getreent () ;
 int esp_vfs_close (int ,int) ;
 int esp_vfs_open (int ,char const*,int const,int ) ;

__attribute__((used)) static void test_open(dummy_vfs_t* instance, const char* path,
        bool should_be_called, bool should_be_opened, int line)
{
    const int flags = O_CREAT | O_TRUNC | O_RDWR;
    instance->called = 0;
    int fd = esp_vfs_open(__getreent(), path, flags, 0);
    UNITY_TEST_ASSERT_EQUAL_INT(should_be_called, instance->called, line,
            "should_be_called check failed");
    if (should_be_called) {
        if (should_be_opened) {
            UNITY_TEST_ASSERT(fd >= 0, line, "should be opened");
        } else {
            UNITY_TEST_ASSERT(fd < 0, line, "should not be opened");
        }
    }
    esp_vfs_close(__getreent(), fd);
}
