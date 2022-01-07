
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int dummy; } ;


 int MLEN ;
 int MTOD (struct mbuf*,int ) ;
 int _MGET (struct mbuf*,int,int) ;
 int bzero (int ,int ) ;
 int caddr_t ;

struct mbuf *
m_getclr(int wait, int type)
{
 struct mbuf *m;

 _MGET(m, wait, type);
 if (m != ((void*)0))
  bzero(MTOD(m, caddr_t), MLEN);
 return (m);
}
