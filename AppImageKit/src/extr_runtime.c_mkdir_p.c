
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int _path ;


 scalar_t__ EEXIST ;
 scalar_t__ ENAMETOOLONG ;
 int PATH_MAX ;
 int S_IRWXU ;
 scalar_t__ errno ;
 scalar_t__ mkdir (char*,int ) ;
 int strcpy (char*,char const* const) ;
 size_t strlen (char const* const) ;

int
mkdir_p(const char* const path)
{

    const size_t len = strlen(path);
    char _path[PATH_MAX];
    char *p;

    errno = 0;


    if (len > sizeof(_path)-1) {
        errno = ENAMETOOLONG;
        return -1;
    }
    strcpy(_path, path);


    for (p = _path + 1; *p; p++) {
        if (*p == '/') {

            *p = '\0';

            if (mkdir(_path, S_IRWXU) != 0) {
                if (errno != EEXIST)
                    return -1;
            }

            *p = '/';
        }
    }

    if (mkdir(_path, S_IRWXU) != 0) {
        if (errno != EEXIST)
            return -1;
    }

    return 0;
}
