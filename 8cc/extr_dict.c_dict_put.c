
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int key; int map; } ;
typedef TYPE_1__ Dict ;


 int map_put (int ,char*,void*) ;
 int vec_push (int ,char*) ;

void dict_put(Dict *dict, char *key, void *val) {
    map_put(dict->map, key, val);
    vec_push(dict->key, key);
}
