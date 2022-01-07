
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Type ;


 int strcasecmp (char*,char*) ;
 int * type_llong ;
 int * type_long ;
 int * type_uint ;
 int * type_ullong ;
 int * type_ulong ;

__attribute__((used)) static Type *read_int_suffix(char *s) {
    if (!strcasecmp(s, "u"))
        return type_uint;
    if (!strcasecmp(s, "l"))
        return type_long;
    if (!strcasecmp(s, "ul") || !strcasecmp(s, "lu"))
        return type_ulong;
    if (!strcasecmp(s, "ll"))
        return type_llong;
    if (!strcasecmp(s, "ull") || !strcasecmp(s, "llu"))
        return type_ullong;
    return ((void*)0);
}
