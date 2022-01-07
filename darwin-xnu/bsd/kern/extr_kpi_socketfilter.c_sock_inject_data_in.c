
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
struct mbuf {int dummy; } ;
typedef TYPE_1__* socket_t ;
typedef int sflt_data_flag_t ;
typedef int * mbuf_t ;
typedef int errno_t ;
struct TYPE_6__ {int so_flags; int so_rcv; } ;


 int EINVAL ;
 int ENOTSUP ;
 int SOF_MP_SUBFLOW ;
 scalar_t__ sbappend (int *,int *) ;
 scalar_t__ sbappendaddr (int *,struct sockaddr*,int *,int *,int *) ;
 scalar_t__ sbappendcontrol (int *,int *,int *,int *) ;
 scalar_t__ sbappendrecord (int *,struct mbuf*) ;
 int sock_data_filt_flag_oob ;
 int sock_data_filt_flag_record ;
 int socket_lock (TYPE_1__*,int) ;
 int socket_unlock (TYPE_1__*,int) ;
 int sorwakeup (TYPE_1__*) ;

errno_t
sock_inject_data_in(socket_t so, const struct sockaddr *from, mbuf_t data,
    mbuf_t control, sflt_data_flag_t flags)
{
 int error = 0;

 if (so == ((void*)0) || data == ((void*)0))
  return (EINVAL);

 if (flags & sock_data_filt_flag_oob) {
  return (ENOTSUP);
 }

 socket_lock(so, 1);


 if (so->so_flags & SOF_MP_SUBFLOW) {
  error = ENOTSUP;
  goto done;
 }

 if (from) {
  if (sbappendaddr(&so->so_rcv,
      (struct sockaddr *)(uintptr_t)from, data, control, ((void*)0)))
   sorwakeup(so);
  goto done;
 }

 if (control) {
  if (sbappendcontrol(&so->so_rcv, data, control, ((void*)0)))
   sorwakeup(so);
  goto done;
 }

 if (flags & sock_data_filt_flag_record) {
  if (control || from) {
   error = EINVAL;
   goto done;
  }
  if (sbappendrecord(&so->so_rcv, (struct mbuf *)data))
   sorwakeup(so);
  goto done;
 }

 if (sbappend(&so->so_rcv, data))
  sorwakeup(so);
done:
 socket_unlock(so, 1);
 return (error);
}
