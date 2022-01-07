
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 char const* dsfmt_get_idstring () ;

__attribute__((used)) inline static const char *get_idstring(void) {
    return dsfmt_get_idstring();
}
