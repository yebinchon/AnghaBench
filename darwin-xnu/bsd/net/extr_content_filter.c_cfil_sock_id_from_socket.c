
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct socket {int so_flags; TYPE_1__* so_cfil; } ;
typedef int cfil_sock_id_t ;
struct TYPE_2__ {int cfi_sock_id; } ;


 int CFIL_SOCK_ID_NONE ;
 int SOF_CONTENT_FILTER ;

cfil_sock_id_t
cfil_sock_id_from_socket(struct socket *so)
{
 if ((so->so_flags & SOF_CONTENT_FILTER) && so->so_cfil)
  return (so->so_cfil->cfi_sock_id);
 else
  return (CFIL_SOCK_ID_NONE);
}
