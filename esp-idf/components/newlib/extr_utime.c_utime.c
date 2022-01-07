
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct utimbuf {int dummy; } ;


 int esp_vfs_utime (char const*,struct utimbuf const*) ;

int utime(const char *path, const struct utimbuf *times)
{
    return esp_vfs_utime(path, times);
}
