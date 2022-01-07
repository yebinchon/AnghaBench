
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_size; int st_mode; } ;
typedef int path_stat ;
typedef int int64_t ;


 scalar_t__ S_ISDIR (int ) ;
 int memset (struct stat*,int ,int) ;
 scalar_t__ stat (char const*,struct stat*) ;

int64_t mz_os_get_file_size(const char *path)
{
    struct stat path_stat;

    memset(&path_stat, 0, sizeof(path_stat));
    if (stat(path, &path_stat) == 0)
    {

        if (S_ISDIR(path_stat.st_mode))
            return 0;

        return path_stat.st_size;
    }

    return 0;
}
