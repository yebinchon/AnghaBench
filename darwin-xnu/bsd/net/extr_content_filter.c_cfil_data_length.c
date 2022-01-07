
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {scalar_t__ ext_size; } ;
struct mbuf {int m_flags; TYPE_1__ m_ext; scalar_t__ m_len; struct mbuf* m_next; } ;


 int CFIL_LOG (int ,char*) ;
 int LOG_ERR ;
 scalar_t__ MSIZE ;
 int M_EXT ;
 int M_PKTHDR ;
 unsigned int m_length (struct mbuf*) ;

__attribute__((used)) static unsigned int
cfil_data_length(struct mbuf *m, int *retmbcnt, int *retmbnum)
{
 struct mbuf *m0;
 unsigned int pktlen = 0;
 int mbcnt;
 int mbnum;


 for (m0 = m; m0 != ((void*)0); m0 = m0->m_next) {
  if (m0->m_flags & M_PKTHDR)
   break;
 }
 if (m0 == ((void*)0)) {
  CFIL_LOG(LOG_ERR, "cfil_data_length: no M_PKTHDR");
  return (0);
 }
 m = m0;

 if (retmbcnt == ((void*)0) && retmbnum == ((void*)0))
  return (m_length(m));

 pktlen = 0;
 mbcnt = 0;
 mbnum = 0;
 for (m0 = m; m0 != ((void*)0); m0 = m0->m_next) {
  pktlen += m0->m_len;
  mbnum++;
  mbcnt += MSIZE;
  if (m0->m_flags & M_EXT)
   mbcnt += m0->m_ext.ext_size;
 }
 if (retmbcnt) {
  *retmbcnt = mbcnt;
 }
 if (retmbnum) {
  *retmbnum = mbnum;
 }
 return (pktlen);
}
