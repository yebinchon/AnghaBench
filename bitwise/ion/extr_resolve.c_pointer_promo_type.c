
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Type ;
typedef int Expr ;


 int * map_get (int *,int *) ;
 int pointer_promo_map ;

Type *pointer_promo_type(Expr *expr) {
    Type *type = map_get(&pointer_promo_map, expr);
    if (!type) {
        return ((void*)0);
    }
    return type;
}
