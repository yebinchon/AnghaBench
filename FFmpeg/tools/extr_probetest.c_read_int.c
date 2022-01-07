
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strtol (char*,char**,int ) ;

__attribute__((used)) static int read_int(char *arg) {
    int ret;

    if (!arg || !*arg)
        return -1;
    ret = strtol(arg, &arg, 0);
    if (*arg)
        return -1;
    return ret;
}
