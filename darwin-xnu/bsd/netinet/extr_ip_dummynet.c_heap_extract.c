
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct dn_heap {int elements; scalar_t__ offset; TYPE_1__* p; } ;
struct TYPE_2__ {int key; } ;


 scalar_t__ DN_KEY_LT (int ,int ) ;
 int HEAP_LEFT (int) ;
 int RESET_OFFSET (struct dn_heap*,int) ;
 int SET_OFFSET (struct dn_heap*,int) ;
 scalar_t__ VM_KERNEL_ADDRPERM (struct dn_heap*) ;
 int heap_insert (struct dn_heap*,int,int *) ;
 int panic (char*) ;
 int printf (char*,int,...) ;

__attribute__((used)) static void
heap_extract(struct dn_heap *h, void *obj)
{
    int child, father, maxelt = h->elements - 1 ;

    if (maxelt < 0) {
 printf("dummynet: warning, extract from empty heap 0x%llx\n",
     (uint64_t)VM_KERNEL_ADDRPERM(h));
 return ;
    }
    father = 0 ;
    if (obj != ((void*)0)) {
 if (h->offset <= 0)
     panic("dummynet: heap_extract from middle not supported on this heap!!!\n");
 father = *((int *)((char *)obj + h->offset)) ;
 if (father < 0 || father >= h->elements) {
     printf("dummynet: heap_extract, father %d out of bound 0..%d\n",
  father, h->elements);
     panic("dummynet: heap_extract");
 }
    }
    RESET_OFFSET(h, father);
    child = HEAP_LEFT(father) ;
    while (child <= maxelt) {
 if (child != maxelt && DN_KEY_LT(h->p[child+1].key, h->p[child].key) )
     child = child+1 ;
 h->p[father] = h->p[child] ;
 SET_OFFSET(h, father);
 father = child ;
 child = HEAP_LEFT(child) ;
    }
    h->elements-- ;
    if (father != maxelt) {



 h->p[father] = h->p[maxelt] ;
 heap_insert(h, father, ((void*)0));
    }
}
