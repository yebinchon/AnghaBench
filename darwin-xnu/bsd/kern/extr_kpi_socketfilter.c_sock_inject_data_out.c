
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct sockaddr {int dummy; } ;
typedef TYPE_1__* socket_t ;
typedef int sflt_data_flag_t ;
typedef int mbuf_t ;
typedef int errno_t ;
struct TYPE_4__ {int so_flags; } ;


 int ENOTSUP ;
 int MSG_OOB ;
 int SOF_MP_SUBFLOW ;
 int sock_data_filt_flag_oob ;
 int sosend (TYPE_1__*,struct sockaddr*,int *,int ,int ,int) ;

errno_t
sock_inject_data_out(socket_t so, const struct sockaddr *to, mbuf_t data,
    mbuf_t control, sflt_data_flag_t flags)
{
 int sosendflags = 0;


 if (so->so_flags & SOF_MP_SUBFLOW)
  return (ENOTSUP);

 if (flags & sock_data_filt_flag_oob)
  sosendflags = MSG_OOB;
 return (sosend(so, (struct sockaddr *)(uintptr_t)to, ((void*)0),
     data, control, sosendflags));
}
