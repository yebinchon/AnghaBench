
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Type ;
typedef int Expr ;


 int map_put (int *,int *,int *) ;
 int resolved_expected_type_map ;

void set_resolved_expected_type(Expr *expr, Type *type) {
    if (expr && type) {
        map_put(&resolved_expected_type_map, expr, type);
    }
}
