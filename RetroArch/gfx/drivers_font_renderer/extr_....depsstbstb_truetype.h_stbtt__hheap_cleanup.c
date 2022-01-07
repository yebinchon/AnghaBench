
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_2__ ;
typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {struct TYPE_5__* next; } ;
typedef TYPE_1__ stbtt__hheap_chunk ;
struct TYPE_6__ {TYPE_1__* head; } ;
typedef TYPE_2__ stbtt__hheap ;


 int free (TYPE_1__*) ;

__attribute__((used)) static void stbtt__hheap_cleanup(stbtt__hheap *hh, void *userdata)
{
   stbtt__hheap_chunk *c = hh->head;
   while (c) {
      stbtt__hheap_chunk *n = c->next;
      free(c);
      c = n;
   }
}
