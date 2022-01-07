
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct dn_pipe {int dummy; } ;
struct dn_heap {scalar_t__ elements; TYPE_1__* p; } ;
struct TYPE_2__ {struct dn_pipe* object; } ;


 int heapify (struct dn_heap*) ;

__attribute__((used)) static void
pipe_remove_from_heap(struct dn_heap *h, struct dn_pipe *p)
{
    if (h->elements > 0) {
 int i = 0 ;
 for (i=0; i < h->elements ; i++ ) {
     if (h->p[i].object == p) {
  h->elements-- ;
  h->p[i] = h->p[h->elements] ;
  heapify(h);
  break ;
     }
 }
    }
}
