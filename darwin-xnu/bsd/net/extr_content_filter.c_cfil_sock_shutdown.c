
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int uint64_t ;
struct socket {int so_flags; int so_state; int so_snd; TYPE_1__* so_cfil; } ;
struct TYPE_2__ {int cfi_flags; } ;


 int CFIF_DROP ;
 int CFIF_SHUT_RD ;
 int CFIF_SHUT_WR ;
 int CFIL_LOG (int ,char*,int ,...) ;
 int EJUSTRETURN ;
 int ENOTCONN ;
 scalar_t__ IS_UDP (struct socket*) ;
 int LOG_ERR ;
 int LOG_INFO ;
 int SHUT_RD ;
 int SHUT_RDWR ;
 int SHUT_WR ;
 int SOF_CONTENT_FILTER ;
 int SS_CANTRCVMORE ;
 int SS_CANTSENDMORE ;
 scalar_t__ VM_KERNEL_ADDRPERM (struct socket*) ;
 scalar_t__ cfil_sock_data_pending (int *) ;
 int cfil_sock_notify_shutdown (struct socket*,int) ;
 int cfil_sock_udp_shutdown (struct socket*,int*) ;
 int socket_lock_assert_owned (struct socket*) ;

int
cfil_sock_shutdown(struct socket *so, int *how)
{
 int error = 0;

 if (IS_UDP(so)) {
  return (cfil_sock_udp_shutdown(so, how));
 }

 if ((so->so_flags & SOF_CONTENT_FILTER) == 0 || so->so_cfil == ((void*)0))
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

 if ((so->so_cfil->cfi_flags & CFIF_DROP) != 0) {
  CFIL_LOG(LOG_ERR, "so %llx drop set",
   (uint64_t)VM_KERNEL_ADDRPERM(so));
  goto done;
 }




 if (*how != SHUT_WR) {
  if (so->so_cfil->cfi_flags & CFIF_SHUT_RD) {
   error = ENOTCONN;
   goto done;
  }
  so->so_cfil->cfi_flags |= CFIF_SHUT_RD;
  cfil_sock_notify_shutdown(so, SHUT_RD);
 }



 if (*how != SHUT_RD) {
  if (so->so_cfil->cfi_flags & CFIF_SHUT_WR) {
   error = ENOTCONN;
   goto done;
  }
  so->so_cfil->cfi_flags |= CFIF_SHUT_WR;
  cfil_sock_notify_shutdown(so, SHUT_WR);





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
