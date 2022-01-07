
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct timeval {scalar_t__ tv_sec; } ;
struct dn_flow_set {int rq_elements; scalar_t__ last_expired; int rq_size; struct dn_flow_queue** rq; } ;
struct dn_flow_queue {scalar_t__ S; scalar_t__ F; struct dn_flow_queue* next; int * head; } ;


 int FREE (struct dn_flow_queue*,int ) ;
 int M_DUMMYNET ;
 int getmicrotime (struct timeval*) ;

__attribute__((used)) static int
expire_queues(struct dn_flow_set *fs)
{
    struct dn_flow_queue *q, *prev ;
    int i, initial_elements = fs->rq_elements ;
 struct timeval timenow;


 getmicrotime(&timenow);

    if (fs->last_expired == timenow.tv_sec)
 return 0 ;
    fs->last_expired = timenow.tv_sec ;
    for (i = 0 ; i <= fs->rq_size ; i++)
 for (prev=((void*)0), q = fs->rq[i] ; q != ((void*)0) ; )
     if (q->head != ((void*)0) || q->S != q->F+1) {
    prev = q ;
           q = q->next ;
       } else {
  struct dn_flow_queue *old_q = q ;

  if (prev != ((void*)0))
      prev->next = q = q->next ;
  else
      fs->rq[i] = q = q->next ;
  fs->rq_elements-- ;
  FREE(old_q, M_DUMMYNET);
     }
    return initial_elements - fs->rq_elements ;
}
