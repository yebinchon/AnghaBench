
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int mbuf_t ;
typedef int ifnet_t ;
typedef int errno_t ;


 int m_do_tx_compl_callback (int ,int ) ;

errno_t
ifnet_tx_compl(ifnet_t ifp, mbuf_t m)
{
 m_do_tx_compl_callback(m, ifp);

 return (0);
}
