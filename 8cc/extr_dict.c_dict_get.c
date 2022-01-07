
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int map; } ;
typedef TYPE_1__ Dict ;


 void* map_get (int ,char*) ;

void *dict_get(Dict *dict, char *key) {
    return map_get(dict->map, key);
}
