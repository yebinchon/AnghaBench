
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int len; int body; } ;
typedef TYPE_1__ Vector ;


 int extend (TYPE_1__*,int) ;
 int memcpy (int,int,int) ;

void vec_append(Vector *a, Vector *b) {
    extend(a, b->len);
    memcpy(a->body + a->len, b->body, sizeof(void *) * b->len);
    a->len += b->len;
}
