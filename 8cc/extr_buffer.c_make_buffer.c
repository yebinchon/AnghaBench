
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int nalloc; scalar_t__ len; void* body; } ;
typedef TYPE_1__ Buffer ;


 int INIT_SIZE ;
 void* malloc (int) ;

Buffer *make_buffer() {
    Buffer *r = malloc(sizeof(Buffer));
    r->body = malloc(INIT_SIZE);
    r->nalloc = INIT_SIZE;
    r->len = 0;
    return r;
}
