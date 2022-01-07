
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Vector ;
typedef int Type ;


 int read_struct_initializer_sub (int *,int *,int,int) ;
 int sort_inits (int *) ;

__attribute__((used)) static void read_struct_initializer(Vector *inits, Type *ty, int off, bool designated) {
    read_struct_initializer_sub(inits, ty, off, designated);
    sort_inits(inits);
}
