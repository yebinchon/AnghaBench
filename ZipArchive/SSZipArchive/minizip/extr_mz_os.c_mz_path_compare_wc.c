
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;
typedef int int32_t ;


 int MZ_EXIST_ERROR ;
 int MZ_OK ;
 int tolower (char const) ;

int32_t mz_path_compare_wc(const char *path, const char *wildcard, uint8_t ignore_case)
{
    while (*path != 0)
    {
        switch (*wildcard)
        {
        case '*':

            if (*(wildcard + 1) == 0)
                return MZ_OK;

            while (*path != 0)
            {
                if (mz_path_compare_wc(path, (wildcard + 1), ignore_case) == MZ_OK)
                    return MZ_OK;

                path += 1;
            }

            return MZ_EXIST_ERROR;

        default:

            if ((*path == '\\' && *wildcard == '/') || (*path == '/' && *wildcard == '\\'))
                break;

            if (ignore_case)
            {
                if (tolower(*path) != tolower(*wildcard))
                    return MZ_EXIST_ERROR;
            }
            else
            {
                if (*path != *wildcard)
                    return MZ_EXIST_ERROR;
            }

            break;
        }

        path += 1;
        wildcard += 1;
    }

    if ((*wildcard != 0) && (*wildcard != '*'))
        return MZ_EXIST_ERROR;

    return MZ_OK;
}
