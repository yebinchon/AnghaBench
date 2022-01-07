
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_flags; int so_flags1; int so_zone; int so_gencnt; int * so_msg_state; int so_cred; } ;
typedef int SInt64 ;


 int FREE (int *,int ) ;
 int FREE_ZONE (struct socket*,int,int ) ;
 int M_TEMP ;
 int OSIncrementAtomic64 (int *) ;
 int SOF1_CACHED_IN_SOCK_LAYER ;
 int SOF_ENABLE_MSGS ;
 int VERIFY (int ) ;
 int cached_sock_free (struct socket*) ;
 int cfil_sock_detach (struct socket*) ;
 int kauth_cred_unref (int *) ;
 int mac_socket_label_destroy (struct socket*) ;
 int sflt_termsock (struct socket*) ;
 int so_gencnt ;

void
sodealloc(struct socket *so)
{
 kauth_cred_unref(&so->so_cred);


 sflt_termsock(so);






 if (so->so_flags & SOF_ENABLE_MSGS) {
  FREE(so->so_msg_state, M_TEMP);
  so->so_msg_state = ((void*)0);
 }
 VERIFY(so->so_msg_state == ((void*)0));

 so->so_gencnt = OSIncrementAtomic64((SInt64 *)&so_gencnt);





 if (so->so_flags1 & SOF1_CACHED_IN_SOCK_LAYER) {
  cached_sock_free(so);
 } else {
  FREE_ZONE(so, sizeof (*so), so->so_zone);
 }
}
