
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char sscanf (char*,char*,size_t*,char*) ;
 int usage (int) ;
 int warnx (char*,char*) ;

__attribute__((used)) static size_t
parse_size_t(char *str)
{
    char r, x;
    size_t size;

    r = sscanf(str, "%zu%c", &size, &x);
    if (1 != r) {
        warnx("invalid size: %s", str);
        usage(5);
    }
    return size;
}
