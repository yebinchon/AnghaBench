
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strcmp (char*,char const*) ;
 char* strrchr (char const*,char) ;

__attribute__((used)) static int check_file_extension(const char *filename, const char *extension) {
    char *dot;
    if (!filename || !extension)
        return -1;
    dot = strrchr(filename, '.');
    if (dot && !strcmp(dot + 1, extension))
        return 0;
    return -1;
}
