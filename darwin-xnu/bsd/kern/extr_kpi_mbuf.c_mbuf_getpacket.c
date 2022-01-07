
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * mbuf_t ;
typedef scalar_t__ mbuf_how_t ;
typedef int errno_t ;


 int ENOMEM ;
 int EWOULDBLOCK ;
 scalar_t__ MBUF_WAITOK ;
 int * m_getpacket_how (scalar_t__) ;

errno_t
mbuf_getpacket(mbuf_how_t how, mbuf_t *mbuf)
{

 errno_t error = 0;

 *mbuf = m_getpacket_how(how);

 if (*mbuf == ((void*)0)) {
  if (how == MBUF_WAITOK)
   error = ENOMEM;
  else
   error = EWOULDBLOCK;
 }

 return (error);
}
