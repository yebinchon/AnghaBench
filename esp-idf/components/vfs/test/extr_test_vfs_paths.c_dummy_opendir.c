
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int called; int match_path; } ;
typedef TYPE_1__ dummy_vfs_t ;
typedef int DIR ;


 int ENOENT ;
 int TEST_ASSERT_NOT_NULL (int *) ;
 int * calloc (int,int) ;
 int errno ;
 scalar_t__ strcmp (int ,char const*) ;

__attribute__((used)) static DIR* dummy_opendir(void* ctx, const char* path)
{
    dummy_vfs_t* dummy = (dummy_vfs_t*) ctx;
    dummy->called = 1;
    if (strcmp(dummy->match_path, path) == 0) {
        DIR* result = calloc(1, sizeof(DIR));
        TEST_ASSERT_NOT_NULL(result);
        return result;
    }
    errno = ENOENT;
    return ((void*)0);
}
