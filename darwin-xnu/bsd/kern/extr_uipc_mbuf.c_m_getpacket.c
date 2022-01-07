
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;


 int MC_CL ;
 int M_WAIT ;
 struct mbuf* m_getpackets_internal (unsigned int*,int,int ,int,int ) ;
 int m_maxsize (int ) ;

struct mbuf *
m_getpacket(void)
{
 unsigned int num_needed = 1;

 return (m_getpackets_internal(&num_needed, 1, M_WAIT, 1,
     m_maxsize(MC_CL)));
}
