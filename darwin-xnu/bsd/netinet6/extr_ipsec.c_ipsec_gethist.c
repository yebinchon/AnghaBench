
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;
struct ipsec_tag {int history_count; struct ipsec_history* history; } ;
struct ipsec_history {int dummy; } ;


 struct ipsec_tag* ipsec_findaux (struct mbuf*) ;

struct ipsec_history *
ipsec_gethist(
 struct mbuf *m,
 int *lenp)
{
 struct ipsec_tag *itag;

 itag = ipsec_findaux(m);
 if (!itag)
  return ((void*)0);
 if (itag->history_count == 0)
  return ((void*)0);
 if (lenp)
  *lenp = (int)(itag->history_count * sizeof(struct ipsec_history));
 return itag->history;
}
