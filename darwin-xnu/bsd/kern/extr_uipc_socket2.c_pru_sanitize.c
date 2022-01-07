
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct pr_usrreqs {int pru_preconnect; int pru_socheckopt; int pru_sosend_list; int pru_sosend; int pru_soreceive_list; int pru_soreceive; int pru_sopoll; int pru_sockaddr; int pru_shutdown; int pru_sense; int pru_send_list; int pru_send; int pru_rcvoob; int pru_rcvd; int pru_peeraddr; int pru_listen; int pru_disconnectx; int pru_disconnect; int pru_detach; int pru_control; int pru_connectx; int pru_connect2; int pru_connect; int pru_bind; int pru_attach; int pru_accept; int pru_abort; } ;


 int DEFAULT (int ,int ) ;
 int pru_abort_notsupp ;
 int pru_accept_notsupp ;
 int pru_attach_notsupp ;
 int pru_bind_notsupp ;
 int pru_connect2_notsupp ;
 int pru_connect_notsupp ;
 int pru_connectx_notsupp ;
 int pru_control_notsupp ;
 int pru_detach_notsupp ;
 int pru_disconnect_notsupp ;
 int pru_disconnectx_notsupp ;
 int pru_listen_notsupp ;
 int pru_peeraddr_notsupp ;
 int pru_preconnect_null ;
 int pru_rcvd_notsupp ;
 int pru_rcvoob_notsupp ;
 int pru_send_list_notsupp ;
 int pru_send_notsupp ;
 int pru_sense_null ;
 int pru_shutdown_notsupp ;
 int pru_socheckopt_null ;
 int pru_sockaddr_notsupp ;
 int pru_sopoll_notsupp ;
 int pru_soreceive_list_notsupp ;
 int pru_soreceive_notsupp ;
 int pru_sosend_list_notsupp ;
 int pru_sosend_notsupp ;

void
pru_sanitize(struct pr_usrreqs *pru)
{

 if ((pru->pru_abort) == ((void*)0)) (pru->pru_abort) = (pru_abort_notsupp);
 if ((pru->pru_accept) == ((void*)0)) (pru->pru_accept) = (pru_accept_notsupp);
 if ((pru->pru_attach) == ((void*)0)) (pru->pru_attach) = (pru_attach_notsupp);
 if ((pru->pru_bind) == ((void*)0)) (pru->pru_bind) = (pru_bind_notsupp);
 if ((pru->pru_connect) == ((void*)0)) (pru->pru_connect) = (pru_connect_notsupp);
 if ((pru->pru_connect2) == ((void*)0)) (pru->pru_connect2) = (pru_connect2_notsupp);
 if ((pru->pru_connectx) == ((void*)0)) (pru->pru_connectx) = (pru_connectx_notsupp);
 if ((pru->pru_control) == ((void*)0)) (pru->pru_control) = (pru_control_notsupp);
 if ((pru->pru_detach) == ((void*)0)) (pru->pru_detach) = (pru_detach_notsupp);
 if ((pru->pru_disconnect) == ((void*)0)) (pru->pru_disconnect) = (pru_disconnect_notsupp);
 if ((pru->pru_disconnectx) == ((void*)0)) (pru->pru_disconnectx) = (pru_disconnectx_notsupp);
 if ((pru->pru_listen) == ((void*)0)) (pru->pru_listen) = (pru_listen_notsupp);
 if ((pru->pru_peeraddr) == ((void*)0)) (pru->pru_peeraddr) = (pru_peeraddr_notsupp);
 if ((pru->pru_rcvd) == ((void*)0)) (pru->pru_rcvd) = (pru_rcvd_notsupp);
 if ((pru->pru_rcvoob) == ((void*)0)) (pru->pru_rcvoob) = (pru_rcvoob_notsupp);
 if ((pru->pru_send) == ((void*)0)) (pru->pru_send) = (pru_send_notsupp);
 if ((pru->pru_send_list) == ((void*)0)) (pru->pru_send_list) = (pru_send_list_notsupp);
 if ((pru->pru_sense) == ((void*)0)) (pru->pru_sense) = (pru_sense_null);
 if ((pru->pru_shutdown) == ((void*)0)) (pru->pru_shutdown) = (pru_shutdown_notsupp);
 if ((pru->pru_sockaddr) == ((void*)0)) (pru->pru_sockaddr) = (pru_sockaddr_notsupp);
 if ((pru->pru_sopoll) == ((void*)0)) (pru->pru_sopoll) = (pru_sopoll_notsupp);
 if ((pru->pru_soreceive) == ((void*)0)) (pru->pru_soreceive) = (pru_soreceive_notsupp);
 if ((pru->pru_soreceive_list) == ((void*)0)) (pru->pru_soreceive_list) = (pru_soreceive_list_notsupp);
 if ((pru->pru_sosend) == ((void*)0)) (pru->pru_sosend) = (pru_sosend_notsupp);
 if ((pru->pru_sosend_list) == ((void*)0)) (pru->pru_sosend_list) = (pru_sosend_list_notsupp);
 if ((pru->pru_socheckopt) == ((void*)0)) (pru->pru_socheckopt) = (pru_socheckopt_null);
 if ((pru->pru_preconnect) == ((void*)0)) (pru->pru_preconnect) = (pru_preconnect_null);

}
