
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {struct mbuf* m_nextpkt; } ;
struct dn_pipe {int idle_heap; int not_eligible_heap; int scheduler_heap; struct mbuf* head; int fs; } ;


 int DN_FREE_PKT (struct mbuf*) ;
 int heap_free (int *) ;
 int purge_flow_set (int *,int) ;

__attribute__((used)) static void
purge_pipe(struct dn_pipe *pipe)
{
    struct mbuf *m, *mnext;

    purge_flow_set( &(pipe->fs), 1 );

    mnext = pipe->head;
    while ((m = mnext) != ((void*)0)) {
 mnext = m->m_nextpkt;
 DN_FREE_PKT(m);
    }

    heap_free( &(pipe->scheduler_heap) );
    heap_free( &(pipe->not_eligible_heap) );
    heap_free( &(pipe->idle_heap) );
}
