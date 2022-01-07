
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int len; void** body; } ;
typedef TYPE_1__ Vector ;


 int assert (int) ;

void *vec_get(Vector *vec, int index) {
    assert(0 <= index && index < vec->len);
    return vec->body[index];
}
