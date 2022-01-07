
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int int32_t ;


 int MZ_EXIST_ERROR ;
 int MZ_OK ;
 int MZ_PARAM_ERROR ;

int32_t mz_path_get_filename(const char *path, const char **filename)
{
    const char *match = ((void*)0);

    if (path == ((void*)0) || filename == ((void*)0))
        return MZ_PARAM_ERROR;

    *filename = ((void*)0);

    for (match = path; *match != 0; match += 1)
    {
        if ((*match == '\\') || (*match == '/'))
            *filename = match + 1;
    }

    if (*filename == ((void*)0))
        return MZ_EXIST_ERROR;

    return MZ_OK;
}
