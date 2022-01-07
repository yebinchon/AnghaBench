
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Map ;


 int INIT_SIZE ;
 int * do_make_map (int *,int ) ;

Map *make_map_parent(Map *parent) {
    return do_make_map(parent, INIT_SIZE);
}
