
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mode_t ;


 int ENOTSUP ;
 int errno ;

__attribute__((used)) static int vfs_spiffs_mkdir(void* ctx, const char* name, mode_t mode)
{
    errno = ENOTSUP;
    return -1;
}
