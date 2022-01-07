
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Type ;


 int * malloc (int) ;
 int memcpy (int *,int *,int) ;

__attribute__((used)) static Type *copy_type(Type *ty) {
    Type *r = malloc(sizeof(Type));
    memcpy(r, ty, sizeof(Type));
    return r;
}
