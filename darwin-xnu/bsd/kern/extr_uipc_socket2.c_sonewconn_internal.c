
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_10__ TYPE_5__ ;
typedef struct TYPE_9__ TYPE_4__ ;
typedef struct TYPE_8__ TYPE_3__ ;
typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct TYPE_9__ {int sb_flags; int sb_hiwat; struct socket* sb_so; } ;
struct TYPE_10__ {int sb_flags; int sb_hiwat; struct socket* sb_so; } ;
struct socket {int so_qlen; int so_incqlen; int so_qlimit; int so_options; int so_state; int so_flags; int so_usecount; int so_flags1; int so_timeo; int so_incomp; int so_comp; struct socket* so_head; TYPE_3__* so_proto; TYPE_4__ so_snd; TYPE_5__ so_rcv; int so_traffic_class; int so_background_thread; int so_evlist; scalar_t__ next_unlock_lr; scalar_t__ next_lock_lr; int e_uuid; int e_upid; int e_pid; int last_uuid; int last_upid; int last_pid; int so_cred; int so_pgid; int so_linger; int so_type; } ;
typedef int lck_mtx_t ;
typedef int caddr_t ;
struct TYPE_8__ {TYPE_2__* pr_domain; scalar_t__ pr_unlock; TYPE_1__* pr_usrreqs; int * (* pr_getlock ) (struct socket*,int ) ;} ;
struct TYPE_7__ {int dom_refs; int * dom_mtx; } ;
struct TYPE_6__ {scalar_t__ (* pru_attach ) (struct socket*,int ,int *) ;} ;


 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int SB_RECV ;
 int SB_USRSIZE ;
 int SOCK_DOM (struct socket*) ;
 int SOF1_TRAFFIC_MGT_SO_BACKGROUND ;
 int SOF_BINDRANDOMPORT ;
 int SOF_DELEGATED ;
 int SOF_INCOMP_INPROGRESS ;
 int SOF_NOADDRAVAIL ;
 int SOF_NODEFUNCT ;
 int SOF_NOSIGPIPE ;
 int SOF_NOTIFYCONFLICT ;
 int SOF_NOTSENT_LOWAT ;
 int SOF_NPX_SETOPTSHUT ;
 int SOF_PRIVILEGED_TRAFFIC_CLASS ;
 int SOF_REUSESHAREUID ;
 int SOF_USELRO ;
 int SO_ACCEPTCONN ;
 int SS_COMP ;
 int SS_INCOMP ;
 int SS_NOFDREF ;
 int TAILQ_INIT (int *) ;
 int TAILQ_INSERT_TAIL (int *,struct socket*,int ) ;
 int atomic_add_32 (int *,int) ;
 int kauth_cred_ref (int ) ;
 int mac_socket_label_associate_accept (struct socket*,struct socket*) ;
 int memcpy (int ,int ,int) ;
 int sflt_initsock (struct socket*) ;
 int so_acquire_accept_list (struct socket*,int *) ;
 int so_list ;
 int so_release_accept_list (struct socket*) ;
 struct socket* soalloc (int,int ,int ) ;
 int socket_lock (struct socket*,int ) ;
 int socket_unlock (struct socket*,int ) ;
 int soclose (struct socket*) ;
 int sodealloc (struct socket*) ;
 int somaxconn ;
 int soqlencomp ;
 scalar_t__ soqlimitcompat ;
 scalar_t__ soreserve (struct socket*,int ,int ) ;
 int sorwakeup (struct socket*) ;
 int * stub1 (struct socket*,int ) ;
 scalar_t__ stub2 (struct socket*,int ,int *) ;
 int wakeup (int ) ;

__attribute__((used)) static struct socket *
sonewconn_internal(struct socket *head, int connstatus)
{
 int so_qlen, error = 0;
 struct socket *so;
 lck_mtx_t *mutex_held;

 if (head->so_proto->pr_getlock != ((void*)0))
  mutex_held = (*head->so_proto->pr_getlock)(head, 0);
 else
  mutex_held = head->so_proto->pr_domain->dom_mtx;
 LCK_MTX_ASSERT(mutex_held, LCK_MTX_ASSERT_OWNED);

 if (!soqlencomp) {




  so_qlen = head->so_qlen;
 } else {
  so_qlen = head->so_qlen - head->so_incqlen;
  if (head->so_incqlen > somaxconn)
   so_qlen = somaxconn;
 }

 if (so_qlen >=
     (soqlimitcompat ? head->so_qlimit : (3 * head->so_qlimit / 2)))
  return ((struct socket *)0);
 so = soalloc(1, SOCK_DOM(head), head->so_type);
 if (so == ((void*)0))
  return ((struct socket *)0);

 if (head->so_proto == ((void*)0)) {
  sodealloc(so);
  return ((struct socket *)0);
 }

 so->so_type = head->so_type;
 so->so_options = head->so_options &~ SO_ACCEPTCONN;
 so->so_linger = head->so_linger;
 so->so_state = head->so_state | SS_NOFDREF;
 so->so_proto = head->so_proto;
 so->so_timeo = head->so_timeo;
 so->so_pgid = head->so_pgid;
 kauth_cred_ref(head->so_cred);
 so->so_cred = head->so_cred;
 so->last_pid = head->last_pid;
 so->last_upid = head->last_upid;
 memcpy(so->last_uuid, head->last_uuid, sizeof (so->last_uuid));
 if (head->so_flags & SOF_DELEGATED) {
  so->e_pid = head->e_pid;
  so->e_upid = head->e_upid;
  memcpy(so->e_uuid, head->e_uuid, sizeof (so->e_uuid));
 }

 so->so_flags = head->so_flags &
     (SOF_NOSIGPIPE | SOF_NOADDRAVAIL | SOF_REUSESHAREUID |
     SOF_NOTIFYCONFLICT | SOF_BINDRANDOMPORT | SOF_NPX_SETOPTSHUT |
     SOF_NODEFUNCT | SOF_PRIVILEGED_TRAFFIC_CLASS| SOF_NOTSENT_LOWAT |
     SOF_USELRO | SOF_DELEGATED);
 so->so_usecount = 1;
 so->next_lock_lr = 0;
 so->next_unlock_lr = 0;

 so->so_rcv.sb_flags |= SB_RECV;
 so->so_rcv.sb_so = so->so_snd.sb_so = so;
 TAILQ_INIT(&so->so_evlist);






 so->so_flags1 |=
     head->so_flags1 & (SOF1_TRAFFIC_MGT_SO_BACKGROUND);
 so->so_background_thread = head->so_background_thread;
 so->so_traffic_class = head->so_traffic_class;

 if (soreserve(so, head->so_snd.sb_hiwat, head->so_rcv.sb_hiwat)) {
  sodealloc(so);
  return ((struct socket *)0);
 }
 so->so_rcv.sb_flags |= (head->so_rcv.sb_flags & SB_USRSIZE);
 so->so_snd.sb_flags |= (head->so_snd.sb_flags & SB_USRSIZE);





 if (head->so_proto->pr_unlock)
  socket_unlock(head, 0);
 if (((*so->so_proto->pr_usrreqs->pru_attach)(so, 0, ((void*)0)) != 0) ||
     error) {
  sodealloc(so);
  if (head->so_proto->pr_unlock)
   socket_lock(head, 0);
  return ((struct socket *)0);
 }
 if (head->so_proto->pr_unlock) {
  socket_lock(head, 0);




  if ((head->so_options & SO_ACCEPTCONN) == 0) {
   so->so_state &= ~SS_NOFDREF;
   soclose(so);
   return ((struct socket *)0);
  }
 }

 atomic_add_32(&so->so_proto->pr_domain->dom_refs, 1);


 so_acquire_accept_list(head, ((void*)0));

 so->so_head = head;
 so->so_flags |= SOF_INCOMP_INPROGRESS;

 if (connstatus) {
  TAILQ_INSERT_TAIL(&head->so_comp, so, so_list);
  so->so_state |= SS_COMP;
 } else {
  TAILQ_INSERT_TAIL(&head->so_incomp, so, so_list);
  so->so_state |= SS_INCOMP;
  head->so_incqlen++;
 }
 head->so_qlen++;

 so_release_accept_list(head);


 sflt_initsock(so);

 if (connstatus) {
  so->so_state |= connstatus;
  sorwakeup(head);
  wakeup((caddr_t)&head->so_timeo);
 }
 return (so);
}
