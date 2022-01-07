
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {int key; int map; } ;
typedef TYPE_1__ Dict ;


 int make_map () ;
 int make_vector () ;
 TYPE_1__* malloc (int) ;

Dict *make_dict() {
    Dict *r = malloc(sizeof(Dict));
    r->map = make_map();
    r->key = make_vector();
    return r;
}
