
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct stat {int st_mode; } ;
typedef int fattributes_t ;


 int ATTR_DIRENT ;
 int ATTR_RDONLY ;
 int DEBUG_MINOR (char*,char const*) ;
 scalar_t__ S_ISDIR (int) ;
 int S_IWUSR ;
 scalar_t__ stat (char const*,struct stat*) ;

int vc_hostfs_get_attr(const char *path, fattributes_t *attr)
{
    struct stat sb;

    DEBUG_MINOR("vc_hostfs_get_attr: '%s'", path );

    *attr = 0;

    if ( stat( path, &sb ) == 0 )
    {
        if ( S_ISDIR( sb.st_mode ))
        {
            *attr |= ATTR_DIRENT;
        }

        if (( sb.st_mode & S_IWUSR ) == 0 )
        {
            *attr |= ATTR_RDONLY;
        }

        return 0;
    }
    return -1;
}
