
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Type ;
typedef int Expr ;


 int map_put (int *,int *,int *) ;
 int pointer_promo_map ;

void set_pointer_promo_type(Expr *expr, Type *type) {
    map_put(&pointer_promo_map, expr, type);
}
