
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct ipsec_tag {scalar_t__ history_count; } ;


 struct ipsec_tag* ipsec_findaux (struct mbuf*) ;
 int ipsec_optaux (struct mbuf*,struct ipsec_tag*) ;

void
ipsec_clearhist(
 struct mbuf *m)
{
 struct ipsec_tag *itag;

 itag = ipsec_findaux(m);
 if (itag) {
  itag->history_count = 0;
 }
 ipsec_optaux(m, itag);
}
