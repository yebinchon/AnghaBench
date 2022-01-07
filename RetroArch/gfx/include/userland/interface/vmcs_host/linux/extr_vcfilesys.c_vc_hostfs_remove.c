
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEBUG_MINOR (char*,char const*) ;
 int backslash_to_slash (char*) ;
 int free (char*) ;
 char* strdup (char const*) ;
 scalar_t__ unlink (char*) ;

int vc_hostfs_remove(const char *path)
{
    char *pathbuf = strdup(path);
    int ret = -1;

    DEBUG_MINOR( "vc_hostfs_remove: '%s'", path );

    if (pathbuf)
    {
       backslash_to_slash(pathbuf);

       if ( unlink( pathbuf ) == 0 )
          ret = 0;
    }

    free(pathbuf);

    return ret;
}
