
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_14__ TYPE_6__ ;
typedef struct TYPE_13__ TYPE_5__ ;
typedef struct TYPE_12__ TYPE_4__ ;
typedef struct TYPE_11__ TYPE_3__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


typedef int uint64_t ;
typedef int u_int64_t ;
struct timeval {int tv_sec; int tv_usec; } ;
struct timespec {int tv_nsec; scalar_t__ tv_sec; } ;
struct TYPE_10__ {int ro_dst; } ;
struct route {int ro_dst; } ;
struct sockaddr_in6 {int dn_dir; int dn_client; int dn_ipoa; int dn_flags; int dn_exthdrs; int dn_unfragpartlen; int dn_alwaysfrag; int dn_mtu; int dn_origifp; int dn_dst6; TYPE_2__ dn_ro6; int dn_ro6_pmtu; int dn_dst; struct route dn_ro; int dn_ifp; int dn_pf_rule; TYPE_4__* dn_ipfw_rule; } ;
struct sockaddr_in {int dn_dir; int dn_client; int dn_ipoa; int dn_flags; int dn_exthdrs; int dn_unfragpartlen; int dn_alwaysfrag; int dn_mtu; int dn_origifp; int dn_dst6; TYPE_2__ dn_ro6; int dn_ro6_pmtu; int dn_dst; struct route dn_ro; int dn_ifp; int dn_pf_rule; TYPE_4__* dn_ipfw_rule; } ;
struct TYPE_11__ {int len; } ;
struct mbuf {struct mbuf* m_nextpkt; TYPE_3__ m_pkthdr; } ;
struct m_tag {int dummy; } ;
struct ip_fw_args {scalar_t__ fwa_flags; int * fwa_ipoa; int fwa_oflags; struct sockaddr_in6* fwa_exthdrs; int fwa_unfragpartlen; int fwa_alwaysfrag; int fwa_mtu; int fwa_origifp; struct sockaddr_in6* fwa_dst6; TYPE_1__* fwa_ro6; scalar_t__ fwa_ro6_pmtu; struct sockaddr_in6* fwa_dst; struct route* fwa_ro; int fwa_oif; int fwa_pf_rule; TYPE_4__* fwa_ipfw_rule; int fwa_id; } ;
struct ip6_exthdrs {int dummy; } ;
struct dn_pkt_tag {int dn_dir; int dn_client; int dn_ipoa; int dn_flags; int dn_exthdrs; int dn_unfragpartlen; int dn_alwaysfrag; int dn_mtu; int dn_origifp; int dn_dst6; TYPE_2__ dn_ro6; int dn_ro6_pmtu; int dn_dst; struct route dn_ro; int dn_ifp; int dn_pf_rule; TYPE_4__* dn_ipfw_rule; } ;
struct TYPE_14__ {scalar_t__ elements; } ;
struct dn_flow_set {int parent_nr; int fs_nr; scalar_t__ plr; int flags_fs; scalar_t__ qsize; int backlogged; scalar_t__ weight; struct dn_pipe* pipe; } ;
struct dn_pipe {scalar_t__ V; scalar_t__ numbytes; void* sched_time; int pipe_nr; TYPE_6__ scheduler_heap; TYPE_6__ not_eligible_heap; int idle_heap; int sum; scalar_t__ bandwidth; struct dn_flow_set fs; } ;
struct dn_flow_queue {int tot_bytes; scalar_t__ len_bytes; scalar_t__ len; scalar_t__ S; scalar_t__ F; int drops; void* sched_time; struct mbuf* head; struct mbuf* tail; int tot_pkts; } ;
struct TYPE_13__ {scalar_t__ opcode; } ;
typedef TYPE_5__ ipfw_insn ;
typedef scalar_t__ dn_key ;
struct TYPE_12__ {int act_ofs; int fw_flg; TYPE_5__* cmd; } ;
struct TYPE_9__ {int ro_dst; } ;


 int DN_CLIENT_IPFW ;
 int DN_CLIENT_PF ;
 scalar_t__ DN_IS_PIPE ;
 int DN_IS_RED ;
 scalar_t__ DN_KEY_GT (scalar_t__,scalar_t__) ;
 int DN_NOERROR ;
 int DN_QSIZE_IS_BYTES ;
 int DN_TO_IP6_OUT ;
 int DN_TO_IP_OUT ;
 int DPRINTF (char*) ;
 int ENOBUFS ;
 int F_LEN (TYPE_5__*) ;
 int IP_FW_F_COMMAND ;
 int IP_FW_F_PIPE ;
 int KERNEL_MODULE_TAG_ID ;
 int KERNEL_TAG_TYPE_DUMMYNET ;
 void* MAX64 (scalar_t__,scalar_t__) ;
 int MY_M ;
 int M_NOWAIT ;
 scalar_t__ O_LOG ;
 scalar_t__ O_PIPE ;
 scalar_t__ SET_TICKS (struct mbuf*,struct dn_flow_queue*,struct dn_pipe*) ;
 scalar_t__ VM_KERNEL_ADDRPERM (struct mbuf*) ;
 int bcopy (struct sockaddr_in6*,int *,int) ;
 int bsd_timeout (int ,int *,struct timespec*) ;
 int bzero (struct sockaddr_in6*,int) ;
 void* curr_time ;
 int dn_mutex ;
 int dummynet ;
 int dummynet_send (struct mbuf*) ;
 struct dn_flow_queue* find_queue (struct dn_flow_set*,int *) ;
 int heap_extract (int *,struct dn_flow_queue*) ;
 int heap_insert (TYPE_6__*,scalar_t__,struct dn_flow_queue*) ;
 int lck_mtx_lock (int ) ;
 int lck_mtx_unlock (int ) ;
 struct dn_flow_set* locate_flowset (int) ;
 struct dn_pipe* locate_pipe (int) ;
 int m_freem (struct mbuf*) ;
 struct m_tag* m_tag_create (int ,int ,int,int ,struct mbuf*) ;
 int m_tag_prepend (struct mbuf*,struct m_tag*) ;
 int microuptime (struct timeval*) ;
 scalar_t__ my_random () ;
 int printf (char*,...) ;
 int ready_event (struct dn_flow_queue*,struct mbuf**,struct mbuf**) ;
 int ready_event_wfq (struct dn_pipe*,struct mbuf**,struct mbuf**) ;
 TYPE_6__ ready_heap ;
 scalar_t__ red_drops (struct dn_flow_set*,struct dn_flow_queue*,int) ;
 int route_copyout (struct route*,struct route*,int) ;
 int timer_enabled ;

__attribute__((used)) static int
dummynet_io(struct mbuf *m, int pipe_nr, int dir, struct ip_fw_args *fwa, int client)
{
    struct mbuf *head = ((void*)0), *tail = ((void*)0);
    struct dn_pkt_tag *pkt;
    struct m_tag *mtag;
    struct dn_flow_set *fs = ((void*)0);
    struct dn_pipe *pipe ;
    u_int64_t len = m->m_pkthdr.len ;
    struct dn_flow_queue *q = ((void*)0) ;
    int is_pipe = 0;
    struct timespec ts;
    struct timeval tv;

    DPRINTF(("dummynet_io m: 0x%llx pipe: %d dir: %d client: %d\n",
        (uint64_t)VM_KERNEL_ADDRPERM(m), pipe_nr, dir, client));
    pipe_nr &= 0xffff ;

  lck_mtx_lock(dn_mutex);





    microuptime(&tv);
 curr_time = (tv.tv_sec * 1000) + (tv.tv_usec / 1000);




    if (is_pipe) {
  pipe = locate_pipe(pipe_nr);
  if (pipe != ((void*)0))
   fs = &(pipe->fs);
 } else
  fs = locate_flowset(pipe_nr);


    if (fs == ((void*)0)){
 goto dropit ;
    }
    pipe = fs->pipe ;
    if (pipe == ((void*)0)) {
 pipe = locate_pipe(fs->parent_nr);

 if (pipe != ((void*)0))
     fs->pipe = pipe ;
 else {
     printf("dummynet: no pipe %d for queue %d, drop pkt\n",
  fs->parent_nr, fs->fs_nr);
     goto dropit ;
 }
    }
    q = find_queue(fs, &(fwa->fwa_id));
    if ( q == ((void*)0) )
 goto dropit ;



    q->tot_bytes += len ;
    q->tot_pkts++ ;
    if ( fs->plr && (my_random() < fs->plr))
 goto dropit ;
    if ( fs->flags_fs & DN_QSIZE_IS_BYTES) {
     if (q->len_bytes > fs->qsize)
     goto dropit ;
    } else {
 if (q->len >= fs->qsize)
     goto dropit ;
    }
    if ( fs->flags_fs & DN_IS_RED && red_drops(fs, q, len) )
 goto dropit ;


    mtag = m_tag_create(KERNEL_MODULE_TAG_ID, KERNEL_TAG_TYPE_DUMMYNET,
      sizeof(struct dn_pkt_tag), M_NOWAIT, m);
    if ( mtag == ((void*)0) )
  goto dropit ;
    m_tag_prepend(m, mtag);

    pkt = (struct dn_pkt_tag *)(mtag+1);
    bzero(pkt, sizeof(struct dn_pkt_tag));







    if (client == DN_CLIENT_IPFW)
     pkt->dn_ipfw_rule = fwa->fwa_ipfw_rule;
    pkt->dn_pf_rule = fwa->fwa_pf_rule;
    pkt->dn_dir = dir ;
    pkt->dn_client = client;

    pkt->dn_ifp = fwa->fwa_oif;
    if (dir == DN_TO_IP_OUT) {





  if (fwa->fwa_ro) {
   route_copyout(&pkt->dn_ro, fwa->fwa_ro, sizeof (pkt->dn_ro));
  }
  if (fwa->fwa_dst) {
   if (fwa->fwa_dst == (struct sockaddr_in *)&fwa->fwa_ro->ro_dst)
    fwa->fwa_dst = (struct sockaddr_in *)&(pkt->dn_ro.ro_dst) ;

   bcopy (fwa->fwa_dst, &pkt->dn_dst, sizeof(pkt->dn_dst));
  }
    } else if (dir == DN_TO_IP6_OUT) {
  if (fwa->fwa_ro6) {
   route_copyout((struct route *)&pkt->dn_ro6,
       (struct route *)fwa->fwa_ro6, sizeof (pkt->dn_ro6));
  }
  if (fwa->fwa_ro6_pmtu) {
   route_copyout((struct route *)&pkt->dn_ro6_pmtu,
       (struct route *)fwa->fwa_ro6_pmtu, sizeof (pkt->dn_ro6_pmtu));
  }
  if (fwa->fwa_dst6) {
   if (fwa->fwa_dst6 == (struct sockaddr_in6 *)&fwa->fwa_ro6->ro_dst)
    fwa->fwa_dst6 = (struct sockaddr_in6 *)&(pkt->dn_ro6.ro_dst) ;

   bcopy (fwa->fwa_dst6, &pkt->dn_dst6, sizeof(pkt->dn_dst6));
  }
  pkt->dn_origifp = fwa->fwa_origifp;
  pkt->dn_mtu = fwa->fwa_mtu;
  pkt->dn_alwaysfrag = fwa->fwa_alwaysfrag;
  pkt->dn_unfragpartlen = fwa->fwa_unfragpartlen;
  if (fwa->fwa_exthdrs) {
   bcopy (fwa->fwa_exthdrs, &pkt->dn_exthdrs, sizeof(pkt->dn_exthdrs));




   bzero(fwa->fwa_exthdrs, sizeof(struct ip6_exthdrs));
  }
    }
    if (dir == DN_TO_IP_OUT || dir == DN_TO_IP6_OUT) {
  pkt->dn_flags = fwa->fwa_oflags;
  if (fwa->fwa_ipoa != ((void*)0))
   pkt->dn_ipoa = *(fwa->fwa_ipoa);
    }
    if (q->head == ((void*)0))
 q->head = m;
    else
 q->tail->m_nextpkt = m;
    q->tail = m;
    q->len++;
    q->len_bytes += len ;

    if ( q->head != m )
 goto done;





    if (is_pipe) {



 dn_key t = 0 ;
 if (pipe->bandwidth)
     t = SET_TICKS(m, q, pipe);
 q->sched_time = curr_time ;
 if (t == 0)
     ready_event( q , &head, &tail );
 else
     heap_insert(&ready_heap, curr_time + t , q );
    } else {
 if (DN_KEY_GT(q->S, q->F)) {
     q->S = pipe->V ;
     pipe->sum += fs->weight ;
 } else {
     heap_extract(&(pipe->idle_heap), q);
     q->S = MAX64(q->F, pipe->V ) ;
 }
 q->F = q->S + ( len<<MY_M )/(u_int64_t) fs->weight;

 if (pipe->not_eligible_heap.elements == 0 &&
  pipe->scheduler_heap.elements == 0)
     pipe->V = MAX64 ( q->S, pipe->V );
 fs->backlogged++ ;
 if (DN_KEY_GT(q->S, pipe->V) ) {
     if (pipe->scheduler_heap.elements == 0)
  printf("dummynet: ++ ouch! not eligible but empty scheduler!\n");
     heap_insert(&(pipe->not_eligible_heap), q->S, q);
 } else {
     heap_insert(&(pipe->scheduler_heap), q->F, q);
     if (pipe->numbytes >= 0) {
  if (pipe->scheduler_heap.elements != 1)
      printf("dummynet: OUCH! pipe should have been idle!\n");
  DPRINTF(("dummynet: waking up pipe %d at %d\n",
   pipe->pipe_nr, (int)(q->F >> MY_M)));
  pipe->sched_time = curr_time ;
  ready_event_wfq(pipe, &head, &tail);
     }
 }
    }
done:

 if (!timer_enabled) {
  ts.tv_sec = 0;
  ts.tv_nsec = 1 * 1000000;
  timer_enabled = 1;
  bsd_timeout(dummynet, ((void*)0), &ts);
 }

 lck_mtx_unlock(dn_mutex);

 if (head != ((void*)0)) {
  dummynet_send(head);
 }

    return 0;

dropit:
    if (q)
 q->drops++ ;
 lck_mtx_unlock(dn_mutex);
    m_freem(m);
    return ( (fs && (fs->flags_fs & DN_NOERROR)) ? 0 : ENOBUFS);
}
