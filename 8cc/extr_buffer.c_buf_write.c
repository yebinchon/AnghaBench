
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ nalloc; scalar_t__ len; char* body; } ;
typedef TYPE_1__ Buffer ;


 int realloc_body (TYPE_1__*) ;

void buf_write(Buffer *b, char c) {
    if (b->nalloc == (b->len + 1))
        realloc_body(b);
    b->body[b->len++] = c;
}
