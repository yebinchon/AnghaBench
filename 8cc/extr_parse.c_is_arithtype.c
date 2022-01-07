
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Type ;


 scalar_t__ is_flotype (int *) ;
 scalar_t__ is_inttype (int *) ;

__attribute__((used)) static bool is_arithtype(Type *ty) {
    return is_inttype(ty) || is_flotype(ty);
}
