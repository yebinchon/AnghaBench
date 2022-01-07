
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Type ;


 char* do_ty2s (int ,int *) ;
 int make_dict () ;

char *ty2s(Type *ty) {
    return do_ty2s(make_dict(), ty);
}
