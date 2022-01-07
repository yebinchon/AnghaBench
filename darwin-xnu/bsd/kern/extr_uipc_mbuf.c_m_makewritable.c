
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int len; } ;
struct mbuf {int m_flags; TYPE_1__ m_pkthdr; scalar_t__ m_len; struct mbuf* m_next; } ;


 int M_COPYALL ;
 int M_COPYBACK0_COW ;
 int M_COPYBACK0_PRESERVE ;
 int M_PKTHDR ;
 int m_copyback0 (struct mbuf**,int,int,int *,int,int) ;
 int m_length (struct mbuf*) ;
 int panic (char*) ;

int
m_makewritable(struct mbuf **mp, int off, int len, int how)
{
 int error;
 error = m_copyback0(mp, off, len, ((void*)0),
     M_COPYBACK0_PRESERVE | M_COPYBACK0_COW, how);
 return (error);
}
