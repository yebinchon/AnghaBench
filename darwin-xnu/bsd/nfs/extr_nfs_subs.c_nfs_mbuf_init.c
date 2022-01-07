
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf_stat {int minclsize; int mhlen; } ;


 int mbuf_stats (struct mbuf_stat*) ;
 int nfs_mbuf_mhlen ;
 int nfs_mbuf_minclsize ;

void
nfs_mbuf_init(void)
{
 struct mbuf_stat ms;

 mbuf_stats(&ms);
 nfs_mbuf_mhlen = ms.mhlen;
 nfs_mbuf_minclsize = ms.minclsize;
}
