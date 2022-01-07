
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;


 int MC_CL ;
 struct mbuf* m_getpackets_internal (unsigned int*,int,int,int ,int ) ;
 int m_maxsize (int ) ;

struct mbuf *
m_getpackets(int num_needed, int num_with_pkthdrs, int how)
{
 unsigned int n = num_needed;

 return (m_getpackets_internal(&n, num_with_pkthdrs, how, 0,
     m_maxsize(MC_CL)));
}
