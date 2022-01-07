
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct m_tag {int dummy; } ;
struct ipsec_tag {scalar_t__ history_count; int * socket; } ;


 int m_tag_delete (struct mbuf*,struct m_tag*) ;

__attribute__((used)) static void
ipsec_optaux(
 struct mbuf *m,
 struct ipsec_tag *itag)
{
 if (itag && itag->socket == ((void*)0) && itag->history_count == 0) {
  m_tag_delete(m, ((struct m_tag*)itag) - 1);
 }
}
