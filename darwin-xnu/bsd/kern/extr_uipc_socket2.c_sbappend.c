
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {int dummy; } ;
struct sockbuf {int sb_flags; TYPE_1__* sb_mbtail; struct mbuf* sb_lastrecord; struct socket* sb_so; } ;
struct mbuf {int m_flags; } ;
struct TYPE_2__ {int m_flags; } ;


 int EJUSTRETURN ;
 int M_EOR ;
 int M_SKIPCFIL ;
 int SBLASTRECORDCHK (struct sockbuf*,char*) ;
 int SB_DROP ;
 int SB_RECV ;
 int cfil_sock_data_in (struct socket*,int *,struct mbuf*,int *,int ) ;
 int m_freem (struct mbuf*) ;
 int sbappendrecord (struct sockbuf*,struct mbuf*) ;
 int sbcompress (struct sockbuf*,struct mbuf*,TYPE_1__*) ;
 int sflt_data_in (struct socket*,int *,struct mbuf**,int *,int ) ;

int
sbappend(struct sockbuf *sb, struct mbuf *m)
{
 struct socket *so = sb->sb_so;

 if (m == ((void*)0) || (sb->sb_flags & SB_DROP)) {
  if (m != ((void*)0))
   m_freem(m);
  return (0);
 }

 SBLASTRECORDCHK(sb, "sbappend 1");

 if (sb->sb_lastrecord != ((void*)0) && (sb->sb_mbtail->m_flags & M_EOR))
  return (sbappendrecord(sb, m));

 if (sb->sb_flags & SB_RECV && !(m && m->m_flags & M_SKIPCFIL)) {
  int error = sflt_data_in(so, ((void*)0), &m, ((void*)0), 0);
  SBLASTRECORDCHK(sb, "sbappend 2");






  if (error != 0) {
   if (error != EJUSTRETURN)
    m_freem(m);
   return (0);
  }
 } else if (m) {
  m->m_flags &= ~M_SKIPCFIL;
 }


 if (sb->sb_lastrecord == ((void*)0))
  sb->sb_lastrecord = m;

 sbcompress(sb, m, sb->sb_mbtail);
 SBLASTRECORDCHK(sb, "sbappend 3");
 return (1);
}
