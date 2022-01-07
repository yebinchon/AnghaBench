
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int ENOTSUP ;
 int errno ;

__attribute__((used)) static int vfs_spiffs_rmdir(void* ctx, const char* name)
{
    errno = ENOTSUP;
    return -1;
}
