
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


struct UNDReply {int dummy; } ;
typedef int ipc_port_t ;
typedef TYPE_1__* UNDReplyRef ;
struct TYPE_6__ {int lock; int self_port; } ;


 int IKOT_NONE ;
 int IKO_NULL ;
 int IP_NULL ;
 int IP_VALID (int ) ;
 int LockCompatGroup ;
 int UNDReply_lock (TYPE_1__*) ;
 int UNDReply_unlock (TYPE_1__*) ;
 int assert (int ) ;
 int ipc_kobject_set (int ,int ,int ) ;
 int ipc_port_dealloc_kernel (int ) ;
 int kfree (TYPE_1__*,int) ;
 int lck_mtx_destroy (int *,int *) ;

void
UNDReply_deallocate(
 UNDReplyRef reply)
{
 ipc_port_t port;

 UNDReply_lock(reply);
 port = reply->self_port;
 assert(IP_VALID(port));
 ipc_kobject_set(port, IKO_NULL, IKOT_NONE);
 reply->self_port = IP_NULL;
 UNDReply_unlock(reply);

 ipc_port_dealloc_kernel(port);
 lck_mtx_destroy(&reply->lock, &LockCompatGroup);
 kfree(reply, sizeof(struct UNDReply));
 return;
}
