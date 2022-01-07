
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int Map ;


 int INIT_SIZE ;
 int * do_make_map (int *,int ) ;

Map *make_map() {
    return do_make_map(((void*)0), INIT_SIZE);
}
