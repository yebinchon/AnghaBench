
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Type ;


 int * malloc (int) ;

__attribute__((used)) static Type *make_type(Type *tmpl) {
    Type *r = malloc(sizeof(Type));
    *r = *tmpl;
    return r;
}
