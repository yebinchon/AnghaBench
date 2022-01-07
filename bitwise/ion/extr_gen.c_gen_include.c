
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int gen_str (char const*,int) ;
 int genf (char*,char const*) ;
 int genlnf (char*) ;

void gen_include(const char *path) {
    genlnf("#include ");
    if (*path == '<') {
        genf("%s", path);
    } else {
        gen_str(path, 0);
    }
}
