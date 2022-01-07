
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ mbuf_t ;


 scalar_t__ mbuf_len (scalar_t__) ;
 scalar_t__ mbuf_next (scalar_t__) ;

__attribute__((used)) static int
nfs_gss_mchain_length(mbuf_t mhead)
{
 mbuf_t mb;
 int len = 0;

 for (mb = mhead; mb; mb = mbuf_next(mb))
  len += mbuf_len(mb);

 return (len);
}
