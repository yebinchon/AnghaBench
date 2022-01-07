
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dn_flow_set {int flags_fs; int rq_size; scalar_t__ rq_elements; int * rq; } ;
struct dn_flow_queue {int dummy; } ;


 int DN_HAVE_FLOW_MASK ;
 int DN_MAX_HASH_SIZE ;
 int ENOSPC ;
 int M_DONTWAIT ;
 int M_DUMMYNET ;
 int M_ZERO ;
 int * _MALLOC (int,int ,int) ;
 int dn_hash_size ;
 int printf (char*) ;

__attribute__((used)) static int
alloc_hash(struct dn_flow_set *x, struct dn_flow_set *pfs)
{
    if (x->flags_fs & DN_HAVE_FLOW_MASK) {
 int l = pfs->rq_size;

 if (l == 0)
     l = dn_hash_size;
 if (l < 4)
     l = 4;
 else if (l > DN_MAX_HASH_SIZE)
     l = DN_MAX_HASH_SIZE;
 x->rq_size = l;
    } else
 x->rq_size = 1;
    x->rq = _MALLOC((1 + x->rq_size) * sizeof(struct dn_flow_queue *),
     M_DUMMYNET, M_DONTWAIT | M_ZERO);
    if (x->rq == ((void*)0)) {
 printf("dummynet: sorry, cannot allocate queue\n");
 return ENOSPC;
    }
    x->rq_elements = 0;
    return 0 ;
}
