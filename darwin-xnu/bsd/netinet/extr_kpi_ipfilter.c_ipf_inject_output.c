
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u_int8_t ;
struct mbuf {int m_len; } ;
typedef scalar_t__ mbuf_t ;
typedef int ipfilter_t ;
typedef int ipf_pktopts_t ;
typedef int errno_t ;


 int ENOTSUP ;
 int ipf_injectv4_out (scalar_t__,int ,int ) ;
 int ipf_injectv6_out (scalar_t__,int ,int ) ;
 int m_freem (struct mbuf*) ;
 scalar_t__ m_mtod (struct mbuf*) ;
 struct mbuf* m_pullup (struct mbuf*,int) ;

errno_t
ipf_inject_output(
 mbuf_t data,
 ipfilter_t filter_ref,
 ipf_pktopts_t options)
{
 struct mbuf *m = (struct mbuf *)data;
 u_int8_t vers;
 errno_t error = 0;


 if (m->m_len < 1) {
  m = m_pullup(m, 1);
  if (m == ((void*)0))
   goto done;
 }

 vers = (*(u_int8_t *)m_mtod(m)) >> 4;
 switch (vers) {
  case 4:
   error = ipf_injectv4_out(data, filter_ref, options);
   break;





  default:
   m_freem(m);
   error = ENOTSUP;
   break;
 }

done:
 return (error);
}
