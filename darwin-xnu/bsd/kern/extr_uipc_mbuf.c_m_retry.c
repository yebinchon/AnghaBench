
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;


 struct mbuf* _M_RETRY (int,int) ;

struct mbuf *
m_retry(int wait, int type)
{
 return (_M_RETRY(wait, type));
}
