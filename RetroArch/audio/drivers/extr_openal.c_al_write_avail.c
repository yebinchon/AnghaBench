
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {size_t res_ptr; size_t tmpbuf_ptr; } ;
typedef TYPE_1__ al_t ;


 size_t BUFSIZE ;
 int al_unqueue_buffers (TYPE_1__*) ;

__attribute__((used)) static size_t al_write_avail(void *data)
{
   al_t *al = (al_t*)data;
   al_unqueue_buffers(al);
   return al->res_ptr * BUFSIZE + (BUFSIZE - al->tmpbuf_ptr);
}
