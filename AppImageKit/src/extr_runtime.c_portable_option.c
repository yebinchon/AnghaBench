
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef size_t ssize_t ;
typedef int fullpath ;


 int EXIT_FAILURE ;
 int PATH_MAX ;
 int S_IRWXU ;
 int errno ;
 int exit (int ) ;
 int fprintf (int ,char*,char const*,...) ;
 int mkdir (char*,int ) ;
 size_t readlink (char const*,char*,int) ;
 int sprintf (char*,char*,char const*,...) ;
 int stderr ;
 scalar_t__ strcmp (char const*,char*) ;
 char* strerror (int ) ;

void
portable_option(const char *arg, const char *appimage_path, const char *name)
{
    char option[32];
    sprintf(option, "appimage-portable-%s", name);

    if (arg && strcmp(arg, option)==0) {
        char portable_dir[PATH_MAX];
        char fullpath[PATH_MAX];

        ssize_t length = readlink(appimage_path, fullpath, sizeof(fullpath));
        if (length < 0) {
            fprintf(stderr, "Error getting realpath for %s\n", appimage_path);
            exit(EXIT_FAILURE);
        }
        fullpath[length] = '\0';

        sprintf(portable_dir, "%s.%s", fullpath, name);
        if (!mkdir(portable_dir, S_IRWXU))
            fprintf(stderr, "Portable %s directory created at %s\n", name, portable_dir);
        else
            fprintf(stderr, "Error creating portable %s directory at %s: %s\n", name, portable_dir, strerror(errno));

        exit(0);
    }
}
