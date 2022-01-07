
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ uint8_t ;
typedef int int32_t ;


 scalar_t__ tolower (char const) ;

int32_t mz_zip_path_compare(const char *path1, const char *path2, uint8_t ignore_case)
{
    do
    {
        if ((*path1 == '\\' && *path2 == '/') ||
            (*path2 == '\\' && *path1 == '/'))
        {

        }
        else if (ignore_case)
        {
            if (tolower(*path1) != tolower(*path2))
                break;
        }
        else if (*path1 != *path2)
        {
            break;
        }

        path1 += 1;
        path2 += 1;
    }
    while (*path1 != 0 && *path2 != 0);

    if (ignore_case)
        return (int32_t)(tolower(*path1) - tolower(*path2));

    return (int32_t)(*path1 - *path2);
}
