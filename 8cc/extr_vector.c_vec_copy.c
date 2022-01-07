
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int len; int body; } ;
typedef TYPE_1__ Vector ;


 TYPE_1__* do_make_vector (int) ;
 int memcpy (int ,int ,int) ;

Vector *vec_copy(Vector *src) {
    Vector *r = do_make_vector(src->len);
    memcpy(r->body, src->body, sizeof(void *) * src->len);
    r->len = src->len;
    return r;
}
