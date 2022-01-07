
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ time_t ;
struct stat {scalar_t__ st_atime; scalar_t__ st_mtime; } ;
typedef int path_stat ;
typedef int int32_t ;


 int MZ_INTERNAL_ERROR ;
 int MZ_OK ;
 int free (char*) ;
 scalar_t__ malloc (size_t) ;
 int memset (struct stat*,int ,int) ;
 int mz_path_remove_slash (char*) ;
 scalar_t__ stat (char*,struct stat*) ;
 scalar_t__ strcmp (char const*,char*) ;
 size_t strlen (char const*) ;
 int strncpy (char*,char const*,size_t) ;

int32_t mz_os_get_file_date(const char *path, time_t *modified_date, time_t *accessed_date, time_t *creation_date)
{
    struct stat path_stat;
    char *name = ((void*)0);
    size_t len = 0;
    int32_t err = MZ_INTERNAL_ERROR;

    memset(&path_stat, 0, sizeof(path_stat));

    if (strcmp(path, "-") != 0)
    {

        len = strlen(path);
        name = (char *)malloc(len + 1);
        strncpy(name, path, len + 1);
        mz_path_remove_slash(name);

        if (stat(name, &path_stat) == 0)
        {
            if (modified_date != ((void*)0))
                *modified_date = path_stat.st_mtime;
            if (accessed_date != ((void*)0))
                *accessed_date = path_stat.st_atime;

            if (creation_date != ((void*)0))
                *creation_date = 0;

            err = MZ_OK;
        }

        free(name);
    }

    return err;
}
