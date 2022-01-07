
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Type ;


 int get_reachable (int *) ;
 int is_reachable (int ) ;

bool is_tuple_reachable(Type *type) {
    return is_reachable(get_reachable(type));
}
