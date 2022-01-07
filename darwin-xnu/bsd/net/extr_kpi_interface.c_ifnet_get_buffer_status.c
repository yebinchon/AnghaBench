
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef TYPE_1__* ifnet_t ;
struct TYPE_8__ {scalar_t__ buf_interface; int buf_sndbuf; } ;
typedef TYPE_2__ ifnet_buffer_status_t ;
typedef int errno_t ;
struct TYPE_7__ {int if_eflags; scalar_t__ if_sndbyte_unsent; int if_snd; } ;


 int EINVAL ;
 int ENXIO ;
 scalar_t__ IFCQ_BYTES (int *) ;
 int IFEF_TXSTART ;
 int IF_FULLY_ATTACHED (TYPE_1__* const) ;
 int bzero (TYPE_2__*,int) ;

errno_t
ifnet_get_buffer_status(const ifnet_t ifp, ifnet_buffer_status_t *buf_status)
{
 if (ifp == ((void*)0) || buf_status == ((void*)0))
  return (EINVAL);

 bzero(buf_status, sizeof (*buf_status));

 if (!IF_FULLY_ATTACHED(ifp))
  return (ENXIO);

 if (ifp->if_eflags & IFEF_TXSTART)
  buf_status->buf_interface = IFCQ_BYTES(&ifp->if_snd);

 buf_status->buf_sndbuf = ((buf_status->buf_interface != 0) ||
     (ifp->if_sndbyte_unsent != 0)) ? 1 : 0;

 return (0);
}
