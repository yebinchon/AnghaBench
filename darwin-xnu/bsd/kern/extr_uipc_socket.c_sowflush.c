
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockbuf {int sb_flags; int sb_sel; int * sb_upcallarg; int * sb_upcall; } ;
struct socket {struct sockbuf so_snd; } ;


 int SBL_IGNDEFUNCT ;
 int SBL_NOINTR ;
 int SBL_WAIT ;
 int SB_DROP ;
 int SB_LOCK ;
 int SB_SEL ;
 int SB_UPCALL ;
 int TRUE ;
 int VERIFY (int) ;
 int sblock (struct sockbuf*,int) ;
 int sbrelease (struct sockbuf*) ;
 int sbunlock (struct sockbuf*,int ) ;
 int selthreadclear (int *) ;

void
sowflush(struct socket *so)
{
 struct sockbuf *sb = &so->so_snd;
 (void) sblock(sb, SBL_WAIT | SBL_NOINTR | SBL_IGNDEFUNCT);
 VERIFY(sb->sb_flags & SB_LOCK);

 sb->sb_flags &= ~(SB_SEL|SB_UPCALL);
 sb->sb_flags |= SB_DROP;
 sb->sb_upcall = ((void*)0);
 sb->sb_upcallarg = ((void*)0);

 sbunlock(sb, TRUE);

 selthreadclear(&sb->sb_sel);
 sbrelease(sb);
}
