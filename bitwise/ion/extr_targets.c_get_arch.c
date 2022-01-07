
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int NUM_ARCHES ;
 int * arch_names ;
 scalar_t__ strcmp (int ,char const*) ;

int get_arch(const char *name) {
    for (int i = 0; i < NUM_ARCHES; i++) {
        if (strcmp(arch_names[i], name) == 0) {
            return i;
        }
    }
    return -1;
}
