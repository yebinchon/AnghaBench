
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_2__ ;
typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {scalar_t__ tv_usec; scalar_t__ tv_sec; } ;
struct sockbuf {int sb_flags; int * sb_mb; int sb_sel; int * sb_upcallarg; int * sb_upcall; TYPE_1__ sb_timeo; int * sb_lastrecord; int * sb_mbtail; scalar_t__ sb_lowat; scalar_t__ sb_ctl; scalar_t__ sb_mbmax; scalar_t__ sb_mbcnt; scalar_t__ sb_hiwat; scalar_t__ sb_cc; int sb_so; } ;
struct socket {struct protosw* so_proto; struct sockbuf so_rcv; } ;
struct protosw {int pr_flags; TYPE_2__* pr_domain; int * (* pr_getlock ) (struct socket*,int ) ;} ;
typedef int lck_mtx_t ;
typedef int asb ;
struct TYPE_4__ {int (* dom_dispose ) (int *) ;int * dom_mtx; } ;


 int LCK_MTX_ASSERT (int *,int ) ;
 int LCK_MTX_ASSERT_OWNED ;
 int PR_RIGHTS ;
 int SBL_IGNDEFUNCT ;
 int SBL_NOINTR ;
 int SBL_WAIT ;
 int SB_DROP ;
 int SB_KNOTE ;
 int SB_LOCK ;
 int SB_SEL ;
 int SB_UPCALL ;
 int TRUE ;
 int VERIFY (int) ;
 int bzero (struct sockbuf*,int) ;
 int sblock (struct sockbuf*,int) ;
 int sbrelease (struct sockbuf*) ;
 int sbunlock (struct sockbuf*,int ) ;
 int selthreadclear (int *) ;
 int sflt_notify (struct socket*,int ,int *) ;
 int socantrcvmore (struct socket*) ;
 int sock_evt_flush_read ;
 int * stub1 (struct socket*,int ) ;
 int stub2 (int *) ;

void
sorflush(struct socket *so)
{
 struct sockbuf *sb = &so->so_rcv;
 struct protosw *pr = so->so_proto;
 struct sockbuf asb;
 sflt_notify(so, sock_evt_flush_read, ((void*)0));

 socantrcvmore(so);
 (void) sblock(sb, SBL_WAIT | SBL_NOINTR | SBL_IGNDEFUNCT);
 VERIFY(sb->sb_flags & SB_LOCK);
 bzero(&asb, sizeof (asb));
 asb.sb_cc = sb->sb_cc;
 asb.sb_hiwat = sb->sb_hiwat;
 asb.sb_mbcnt = sb->sb_mbcnt;
 asb.sb_mbmax = sb->sb_mbmax;
 asb.sb_ctl = sb->sb_ctl;
 asb.sb_lowat = sb->sb_lowat;
 asb.sb_mb = sb->sb_mb;
 asb.sb_mbtail = sb->sb_mbtail;
 asb.sb_lastrecord = sb->sb_lastrecord;
 asb.sb_so = sb->sb_so;
 asb.sb_flags = sb->sb_flags;
 asb.sb_flags &= ~(SB_LOCK|SB_SEL|SB_KNOTE|SB_UPCALL);
 asb.sb_flags |= SB_DROP;
 sb->sb_cc = 0;
 sb->sb_hiwat = 0;
 sb->sb_mbcnt = 0;
 sb->sb_mbmax = 0;
 sb->sb_ctl = 0;
 sb->sb_lowat = 0;
 sb->sb_mb = ((void*)0);
 sb->sb_mbtail = ((void*)0);
 sb->sb_lastrecord = ((void*)0);
 sb->sb_timeo.tv_sec = 0;
 sb->sb_timeo.tv_usec = 0;
 sb->sb_upcall = ((void*)0);
 sb->sb_upcallarg = ((void*)0);
 sb->sb_flags &= ~(SB_SEL|SB_UPCALL);
 sb->sb_flags |= SB_DROP;

 sbunlock(sb, TRUE);







 selthreadclear(&sb->sb_sel);

 if ((pr->pr_flags & PR_RIGHTS) && pr->pr_domain->dom_dispose)
  (*pr->pr_domain->dom_dispose)(asb.sb_mb);

 sbrelease(&asb);
}
