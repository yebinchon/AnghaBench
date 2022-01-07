
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int sscanf (char const*,char*,...) ;

__attribute__((used)) static int timed_line(const char *ptr)
{
    char c;
    int fs, fe;
    return (sscanf(ptr, "%*u:%*u:%*u.%*u %*u:%*u:%*u.%*u %c", &c) == 1 ||
            (sscanf(ptr, "@%u @%u %c", &fs, &fe, &c) == 3 && fs < fe));
}
