
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int DEBUG_MINOR (char*,char const*,char const*) ;
 int backslash_to_slash (char*) ;
 int free (char*) ;
 scalar_t__ rename (char*,char*) ;
 char* strdup (char const*) ;

int vc_hostfs_rename(const char *old, const char *new)
{
    char *oldbuf = strdup(old);
    char *newbuf = strdup(new);
    int ret = -1;

    DEBUG_MINOR( "vc_hostfs_rename: '%s' to '%s'", old, new );

    if (oldbuf && newbuf)
    {
       backslash_to_slash(oldbuf);
       backslash_to_slash(newbuf);

       if ( rename( oldbuf, newbuf ) == 0 )
          ret = 0;
    }

    if (oldbuf)
       free(oldbuf);

    if (newbuf)
       free(newbuf);

    return ret;
}
