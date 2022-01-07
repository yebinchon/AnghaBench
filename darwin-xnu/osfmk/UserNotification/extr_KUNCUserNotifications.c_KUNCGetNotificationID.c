
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct UNDReply {int dummy; } ;
typedef int ipc_kobject_t ;
typedef TYPE_1__* UNDReplyRef ;
struct TYPE_4__ {scalar_t__ self_port; int userLandNotificationKey; int inprogress; int lock; } ;
typedef int KUNCUserNotificationID ;


 int FALSE ;
 int IKOT_UND_REPLY ;
 scalar_t__ IP_NULL ;
 int LCK_ATTR_NULL ;
 int LockCompatGroup ;
 TYPE_1__* UND_REPLY_NULL ;
 int ipc_kobject_set (scalar_t__,int ,int ) ;
 scalar_t__ ipc_port_alloc_kernel () ;
 scalar_t__ kalloc (int) ;
 int kfree (TYPE_1__*,int) ;
 int lck_mtx_init (int *,int *,int ) ;

KUNCUserNotificationID
KUNCGetNotificationID(void)
{
 UNDReplyRef reply;

 reply = (UNDReplyRef) kalloc(sizeof(struct UNDReply));
 if (reply != UND_REPLY_NULL) {
  reply->self_port = ipc_port_alloc_kernel();
  if (reply->self_port == IP_NULL) {
   kfree(reply, sizeof(struct UNDReply));
   reply = UND_REPLY_NULL;
  } else {
   lck_mtx_init(&reply->lock, &LockCompatGroup, LCK_ATTR_NULL);
   reply->userLandNotificationKey = -1;
   reply->inprogress = FALSE;
   ipc_kobject_set(reply->self_port,
     (ipc_kobject_t)reply,
     IKOT_UND_REPLY);
  }
 }
 return (KUNCUserNotificationID) reply;
}
