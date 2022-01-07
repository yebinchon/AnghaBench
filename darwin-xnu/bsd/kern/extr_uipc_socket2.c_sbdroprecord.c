
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct sockbuf {struct mbuf* sb_mb; } ;
struct mbuf {struct mbuf* m_nextpkt; } ;


 int EV_RWBYTES ;
 int MFREE (struct mbuf*,struct mbuf*) ;
 int SB_EMPTY_FIXUP (struct sockbuf*) ;
 int postevent (int ,struct sockbuf*,int ) ;
 int sbfree (struct sockbuf*,struct mbuf*) ;

void
sbdroprecord(struct sockbuf *sb)
{
 struct mbuf *m, *mn;

 m = sb->sb_mb;
 if (m) {
  sb->sb_mb = m->m_nextpkt;
  do {
   sbfree(sb, m);
   MFREE(m, mn);
   m = mn;
  } while (m);
 }
 SB_EMPTY_FIXUP(sb);
 postevent(0, sb, EV_RWBYTES);
}
