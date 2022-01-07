
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Type ;


 int put_type_name (char**,int *) ;

char *get_type_name(Type *type) {
    char *buf = ((void*)0);
    put_type_name(&buf, type);
    return buf;
}
