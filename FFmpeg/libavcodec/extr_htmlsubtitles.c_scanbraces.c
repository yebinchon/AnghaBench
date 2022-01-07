
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int av_isdigit (char const) ;
 scalar_t__ strncmp (char const*,char*,int) ;

__attribute__((used)) static int scanbraces(const char* in) {
    if (strncmp(in, "{\\an", 4) != 0) {
        return 0;
    }
    if (!av_isdigit(in[4])) {
        return 0;
    }
    if (in[5] != '}') {
        return 0;
    }
    return 1;
}
