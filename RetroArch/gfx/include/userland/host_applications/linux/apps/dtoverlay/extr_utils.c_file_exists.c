
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;


 scalar_t__ S_ISREG (int ) ;
 scalar_t__ stat (char const*,struct stat*) ;

int file_exists(const char *dirname)
{
    struct stat finfo;
    return (stat(dirname, &finfo) == 0) && S_ISREG(finfo.st_mode);
}
