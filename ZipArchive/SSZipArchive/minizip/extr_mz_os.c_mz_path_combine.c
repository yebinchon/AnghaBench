
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ int32_t ;


 scalar_t__ MZ_OK ;
 scalar_t__ MZ_PARAM_ERROR ;
 int MZ_PATH_SLASH_PLATFORM ;
 int mz_path_append_slash (char*,scalar_t__,int ) ;
 scalar_t__ strlen (char*) ;
 int strncat (char*,char const*,scalar_t__) ;
 int strncpy (char*,char const*,scalar_t__) ;

int32_t mz_path_combine(char *path, const char *join, int32_t max_path)
{
    int32_t path_len = 0;

    if (path == ((void*)0) || join == ((void*)0) || max_path == 0)
        return MZ_PARAM_ERROR;

    path_len = (int32_t)strlen(path);

    if (path_len == 0)
    {
        strncpy(path, join, max_path - 1);
        path[max_path - 1] = 0;
    }
    else
    {
        mz_path_append_slash(path, max_path, MZ_PATH_SLASH_PLATFORM);
        strncat(path, join, max_path - path_len);
    }

    return MZ_OK;
}
