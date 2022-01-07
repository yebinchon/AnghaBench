
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {void* rq; void* pipe; void* next; } ;
struct TYPE_4__ {void* p; } ;
struct dn_pipe_64 {int delay; TYPE_1__ fs; void* tail; void* head; void* next; int ready; void* ifp; TYPE_2__* if_name; int sched_time; int numbytes; int sum; int V; TYPE_2__ idle_heap; TYPE_2__ not_eligible_heap; TYPE_2__ scheduler_heap; int bandwidth; int pipe_nr; } ;
struct dn_pipe {int delay; int fs; int ready; void* ifp; int * if_name; int sched_time; int numbytes; int sum; int V; int idle_heap; int not_eligible_heap; int scheduler_heap; int bandwidth; int pipe_nr; } ;
struct dn_heap_64 {int dummy; } ;


 void* CAST_DOWN (int ,void*) ;
 void* DN_IS_PIPE ;
 int IFNAMSIZ ;
 void* USER_ADDR_NULL ;
 int bcopy (int *,TYPE_2__*,int) ;
 int cp_flow_set_to_64_user (int *,TYPE_1__*) ;
 char* dn_copy_set_64 (int *,char*) ;
 int hz ;
 int user64_addr_t ;

__attribute__((used)) static
char *cp_pipe_to_64_user(struct dn_pipe *p, struct dn_pipe_64 *pipe_bp)
{
 char *bp;

 pipe_bp->pipe_nr = p->pipe_nr;
 pipe_bp->bandwidth = p->bandwidth;
 pipe_bp->delay = p->delay;
 bcopy( &(p->scheduler_heap), &(pipe_bp->scheduler_heap), sizeof(struct dn_heap_64));
 pipe_bp->scheduler_heap.p = CAST_DOWN(user64_addr_t, pipe_bp->scheduler_heap.p);
 bcopy( &(p->not_eligible_heap), &(pipe_bp->not_eligible_heap), sizeof(struct dn_heap_64));
 pipe_bp->not_eligible_heap.p = CAST_DOWN(user64_addr_t, pipe_bp->not_eligible_heap.p);
 bcopy( &(p->idle_heap), &(pipe_bp->idle_heap), sizeof(struct dn_heap_64));
 pipe_bp->idle_heap.p = CAST_DOWN(user64_addr_t, pipe_bp->idle_heap.p);
 pipe_bp->V = p->V;
 pipe_bp->sum = p->sum;
 pipe_bp->numbytes = p->numbytes;
 pipe_bp->sched_time = p->sched_time;
 bcopy( p->if_name, pipe_bp->if_name, IFNAMSIZ);
 pipe_bp->ifp = CAST_DOWN(user64_addr_t, p->ifp);
 pipe_bp->ready = p->ready;

 cp_flow_set_to_64_user( &(p->fs), &(pipe_bp->fs));

 pipe_bp->delay = (pipe_bp->delay * 1000) / (hz*10) ;






 pipe_bp->next = CAST_DOWN( user64_addr_t, DN_IS_PIPE );

 pipe_bp->head = pipe_bp->tail = USER_ADDR_NULL ;
 pipe_bp->fs.next = USER_ADDR_NULL ;
 pipe_bp->fs.pipe = USER_ADDR_NULL ;
 pipe_bp->fs.rq = USER_ADDR_NULL ;
 bp = ((char *)pipe_bp) + sizeof(struct dn_pipe_64);
 return( dn_copy_set_64( &(p->fs), bp) );
}
