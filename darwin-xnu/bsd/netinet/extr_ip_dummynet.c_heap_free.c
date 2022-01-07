
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dn_heap {scalar_t__ size; int p; } ;


 int FREE (int ,int ) ;
 int M_DUMMYNET ;
 int bzero (struct dn_heap*,int) ;

__attribute__((used)) static void
heap_free(struct dn_heap *h)
{
    if (h->size >0 )
 FREE(h->p, M_DUMMYNET);
    bzero(h, sizeof(*h));
}
