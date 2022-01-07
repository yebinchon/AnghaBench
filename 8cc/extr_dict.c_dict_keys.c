
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int Vector ;
struct TYPE_3__ {int * key; } ;
typedef TYPE_1__ Dict ;



Vector *dict_keys(Dict *dict) {
    return dict->key;
}
