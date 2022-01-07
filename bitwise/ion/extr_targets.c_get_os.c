
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NUM_OSES ;
 int * os_names ;
 scalar_t__ strcmp (int ,char const*) ;

int get_os(const char *name) {
    for (int i = 0; i < NUM_OSES; i++) {
        if (strcmp(os_names[i], name) == 0) {
            return i;
        }
    }
    return -1;
}
