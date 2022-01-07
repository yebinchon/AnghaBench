
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char* format (char*,int ) ;

char *make_label() {
    static int c = 0;
    return format(".L%d", c++);
}
