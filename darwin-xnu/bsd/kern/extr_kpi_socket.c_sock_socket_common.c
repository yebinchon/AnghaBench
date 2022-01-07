
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_5__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef TYPE_1__* socket_t ;
typedef int * sock_upcall ;
typedef int errno_t ;
struct TYPE_7__ {int nas_socket_in_kernel_os_total; int nas_socket_in_kernel_total; } ;
struct TYPE_6__ {scalar_t__ last_upid; scalar_t__ last_pid; int so_flags1; } ;


 int EINVAL ;
 int INC_ATOMIC_INT64_LIM (int ) ;
 int SOF1_IN_KERNEL_SOCKET ;
 TYPE_5__ net_api_stats ;
 int sock_setupcall (TYPE_1__*,int *,void*) ;
 int socreate (int,TYPE_1__**,int,int) ;

errno_t
sock_socket_common(int domain, int type, int protocol, sock_upcall callback,
    void *context, socket_t *new_so, bool is_internal)
{
 int error = 0;

 if (new_so == ((void*)0))
  return (EINVAL);


 error = socreate(domain, new_so, type, protocol);
 if (error == 0) {



  (*new_so)->so_flags1 |= SOF1_IN_KERNEL_SOCKET;
  INC_ATOMIC_INT64_LIM(net_api_stats.nas_socket_in_kernel_total);
  if (is_internal) {
   INC_ATOMIC_INT64_LIM(net_api_stats.nas_socket_in_kernel_os_total);
  }


  if (callback != ((void*)0)) {
   sock_setupcall(*new_so, callback, context);
  }




  (*new_so)->last_pid = 0;
  (*new_so)->last_upid = 0;
 }
 return (error);
}
