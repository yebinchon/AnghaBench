
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Type ;
typedef int Expr ;


 int * map_get (int *,int *) ;
 int resolved_expected_type_map ;

Type *get_resolved_expected_type(Expr *expr) {
    return map_get(&resolved_expected_type_map, expr);
}
