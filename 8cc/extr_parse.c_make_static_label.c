
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* format (char*,int ,char*) ;

__attribute__((used)) static char *make_static_label(char *name) {
    static int c = 0;
    return format(".S%d.%s", c++, name);
}
