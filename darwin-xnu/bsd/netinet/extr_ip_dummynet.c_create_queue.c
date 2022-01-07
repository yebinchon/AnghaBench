
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct dn_flow_set {int rq_elements; int rq_size; struct dn_flow_queue** rq; } ;
struct dn_flow_queue {int hash_slot; scalar_t__ F; scalar_t__ S; struct dn_flow_queue* next; struct dn_flow_set* fs; } ;


 int M_DONTWAIT ;
 int M_DUMMYNET ;
 int M_ZERO ;
 struct dn_flow_queue* _MALLOC (int,int ,int) ;
 int dn_max_ratio ;
 scalar_t__ expire_queues (struct dn_flow_set*) ;
 int printf (char*) ;

__attribute__((used)) static struct dn_flow_queue *
create_queue(struct dn_flow_set *fs, int i)
{
    struct dn_flow_queue *q ;

    if (fs->rq_elements > fs->rq_size * dn_max_ratio &&
     expire_queues(fs) == 0) {



 i = fs->rq_size ;
 if ( fs->rq[i] != ((void*)0) )
     return fs->rq[i] ;
    }
    q = _MALLOC(sizeof(*q), M_DUMMYNET, M_DONTWAIT | M_ZERO);
    if (q == ((void*)0)) {
 printf("dummynet: sorry, cannot allocate queue for new flow\n");
 return ((void*)0) ;
    }
    q->fs = fs ;
    q->hash_slot = i ;
    q->next = fs->rq[i] ;
    q->S = q->F + 1;
    fs->rq[i] = q ;
    fs->rq_elements++ ;
    return q ;
}
