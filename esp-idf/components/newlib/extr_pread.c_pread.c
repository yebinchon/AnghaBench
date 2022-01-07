
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int ssize_t ;
typedef int off_t ;


 int esp_vfs_pread (int,void*,size_t,int ) ;

ssize_t pread(int fd, void *dst, size_t size, off_t offset)
{
    return esp_vfs_pread(fd, dst, size, offset);
}
