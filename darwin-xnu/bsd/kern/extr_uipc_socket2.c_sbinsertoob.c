
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockbuf {int sb_flags; struct mbuf* sb_lastrecord; struct mbuf* sb_mb; int sb_so; } ;
struct mbuf {int m_flags; int m_type; struct mbuf* m_next; struct mbuf* m_nextpkt; } ;


 int EJUSTRETURN ;


 int M_EOR ;
 int M_SKIPCFIL ;
 int SBLASTRECORDCHK (struct sockbuf*,char*) ;
 int SB_RECV ;
 int cfil_sock_data_in (int ,int *,struct mbuf*,int *,int ) ;
 int m_freem (struct mbuf*) ;
 int sballoc (struct sockbuf*,struct mbuf*) ;
 int sbcompress (struct sockbuf*,struct mbuf*,struct mbuf*) ;
 int sflt_data_in (int ,int *,struct mbuf**,int *,int ) ;
 int sock_data_filt_flag_oob ;

int
sbinsertoob(struct sockbuf *sb, struct mbuf *m0)
{
 struct mbuf *m;
 struct mbuf **mp;

 if (m0 == 0)
  return (0);

 SBLASTRECORDCHK(sb, "sbinsertoob 1");

 if ((sb->sb_flags & SB_RECV && !(m0->m_flags & M_SKIPCFIL)) != 0) {
  int error = sflt_data_in(sb->sb_so, ((void*)0), &m0, ((void*)0),
      sock_data_filt_flag_oob);

  SBLASTRECORDCHK(sb, "sbinsertoob 2");






  if (error) {
   if (error != EJUSTRETURN) {
    m_freem(m0);
   }
   return (0);
  }
 } else if (m0) {
  m0->m_flags &= ~M_SKIPCFIL;
 }

 for (mp = &sb->sb_mb; *mp; mp = &((*mp)->m_nextpkt)) {
  m = *mp;
again:
  switch (m->m_type) {

  case 128:
   continue;

  case 129:
   m = m->m_next;
   if (m)
    goto again;
  }
  break;
 }




 sballoc(sb, m0);
 m0->m_nextpkt = *mp;
 if (*mp == ((void*)0)) {

  sb->sb_lastrecord = m0;
 }
 *mp = m0;
 m = m0->m_next;
 m0->m_next = 0;
 if (m && (m0->m_flags & M_EOR)) {
  m0->m_flags &= ~M_EOR;
  m->m_flags |= M_EOR;
 }
 sbcompress(sb, m, m0);
 SBLASTRECORDCHK(sb, "sbinsertoob 3");
 return (1);
}
