
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;


 int unp_discard ;
 int unp_scan (struct mbuf*,int ,int *) ;

void
unp_dispose(struct mbuf *m)
{
 if (m) {
  unp_scan(m, unp_discard, ((void*)0));
 }
}
