
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct socket {int so_state; } ;


 int DBG_FNC_SOSHUTDOWN ;
 int DBG_FUNC_END ;
 int DBG_FUNC_START ;
 int EINVAL ;
 int ENOTCONN ;
 int KERNEL_DEBUG (int,int,int,int ,int ,int ) ;



 int SS_ISCONNECTED ;
 int SS_ISCONNECTING ;
 int SS_ISDISCONNECTING ;
 int socket_lock (struct socket*,int) ;
 int socket_unlock (struct socket*,int) ;
 int soshutdownlock (struct socket*,int) ;

int
soshutdown(struct socket *so, int how)
{
 int error;

 KERNEL_DEBUG(DBG_FNC_SOSHUTDOWN | DBG_FUNC_START, how, 0, 0, 0, 0);

 switch (how) {
 case 130:
 case 128:
 case 129:
  socket_lock(so, 1);
  if ((so->so_state &
      (SS_ISCONNECTED|SS_ISCONNECTING|SS_ISDISCONNECTING)) == 0) {
   error = ENOTCONN;
  } else {
   error = soshutdownlock(so, how);
  }
  socket_unlock(so, 1);
  break;
 default:
  error = EINVAL;
  break;
 }

 KERNEL_DEBUG(DBG_FNC_SOSHUTDOWN | DBG_FUNC_END, how, error, 0, 0, 0);

 return (error);
}
