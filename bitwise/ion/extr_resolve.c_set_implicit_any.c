
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Expr ;


 int implicit_any_map ;
 int map_put (int *,int *,void*) ;

void set_implicit_any(Expr *expr) {
    map_put(&implicit_any_map, expr, (void *)1);
}
