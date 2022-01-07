
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEBUG_MINOR (char*,char const*) ;
 scalar_t__ mkdir (char const*,int) ;

int vc_hostfs_mkdir(const char *path)
{
    DEBUG_MINOR( "vc_hostfs_mkdir: '%s'", path );
    if ( mkdir( path, 0777 ) == 0 )
    {
        return 0;
    }
    return -1;
}
