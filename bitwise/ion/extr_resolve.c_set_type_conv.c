
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Type ;
typedef int Expr ;


 int map_put (int *,int *,int *) ;
 int type_conv_map ;

void set_type_conv(Expr *expr, Type *type) {
    map_put(&type_conv_map, expr, type);
}
