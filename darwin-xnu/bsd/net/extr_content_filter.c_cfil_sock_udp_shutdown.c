
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
struct socket {int so_flags; int so_state; int so_snd; int * so_cfil_db; } ;


 int CFIF_DROP ;
 int CFIF_SHUT_RD ;
 int CFIF_SHUT_WR ;
 int CFIL_LOG (int ,char*,int ,int) ;
 int EJUSTRETURN ;
 int ENOTCONN ;
 int LOG_INFO ;
 int SHUT_RD ;
 int SHUT_RDWR ;
 int SHUT_WR ;
 int SOF_CONTENT_FILTER ;
 int SS_CANTRCVMORE ;
 int SS_CANTSENDMORE ;
 scalar_t__ VM_KERNEL_ADDRPERM (struct socket*) ;
 scalar_t__ cfil_sock_data_pending (int *) ;
 int cfil_sock_udp_notify_shutdown (struct socket*,int,int ,int ) ;
 int socket_lock_assert_owned (struct socket*) ;

int
cfil_sock_udp_shutdown(struct socket *so, int *how)
{
 int error = 0;

 if ((so->so_flags & SOF_CONTENT_FILTER) == 0 || (so->so_cfil_db == ((void*)0)))
  goto done;

 socket_lock_assert_owned(so);

 CFIL_LOG(LOG_INFO, "so %llx how %d",
    (uint64_t)VM_KERNEL_ADDRPERM(so), *how);




 if (*how != SHUT_WR && (so->so_state & SS_CANTRCVMORE) != 0) {

  error = ENOTCONN;
  goto done;
 }
 if (*how != SHUT_RD && (so->so_state & SS_CANTSENDMORE) != 0) {

  error = ENOTCONN;
  goto done;
 }




 if (*how != SHUT_WR) {
  error = cfil_sock_udp_notify_shutdown(so, SHUT_RD, CFIF_DROP, CFIF_SHUT_RD);
  if (error != 0)
   goto done;
 }



 if (*how != SHUT_RD) {
  error = cfil_sock_udp_notify_shutdown(so, SHUT_WR, CFIF_DROP, CFIF_SHUT_WR);
  if (error != 0)
   goto done;






  if (cfil_sock_data_pending(&so->so_snd) != 0) {





   if (*how == SHUT_WR) {
    error = EJUSTRETURN;
   } else if (*how == SHUT_RDWR) {
    *how = SHUT_RD;
   }
  }
 }
done:
 return (error);
}
