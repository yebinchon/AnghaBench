
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int assert (int) ;
 char* get_gen_name_or_default (void const*,char*) ;

const char *get_gen_name(const void *ptr) {
    const char *error = "ERROR";
    const char *name = get_gen_name_or_default(ptr, "error");
    assert(name != error);
    return name;
}
