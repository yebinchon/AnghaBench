
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int protocol_family_t ;
typedef int * mbuf_t ;
typedef int * ifnet_t ;
typedef int errno_t ;


 int EINVAL ;
 int dlil_output (int *,int ,int *,int *,int *,int,int *) ;
 int mbuf_freem_list (int *) ;

errno_t
ifnet_output_raw(ifnet_t interface, protocol_family_t protocol_family, mbuf_t m)
{
 if (interface == ((void*)0) || m == ((void*)0)) {
  if (m != ((void*)0))
   mbuf_freem_list(m);
  return (EINVAL);
 }
 return (dlil_output(interface, protocol_family, m, ((void*)0), ((void*)0), 1, ((void*)0)));
}
