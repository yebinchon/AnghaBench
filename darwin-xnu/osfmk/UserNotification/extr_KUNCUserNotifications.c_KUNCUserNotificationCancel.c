
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int kern_return_t ;
typedef int UNDServerRef ;
typedef TYPE_1__* UNDReplyRef ;
struct TYPE_6__ {int userLandNotificationKey; scalar_t__ inprogress; } ;
typedef int KUNCUserNotificationID ;


 scalar_t__ FALSE ;
 scalar_t__ IP_VALID (int ) ;
 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 int MACH_SEND_INVALID_DEST ;
 int UNDCancelNotification_rpc (int ,int) ;
 int UNDReply_deallocate (TYPE_1__*) ;
 int UNDReply_lock (TYPE_1__*) ;
 int UNDReply_unlock (TYPE_1__*) ;
 int UNDServer_deallocate (int ) ;
 int UNDServer_reference () ;
 TYPE_1__* UND_REPLY_NULL ;

kern_return_t KUNCUserNotificationCancel(
 KUNCUserNotificationID id)
{
 UNDReplyRef reply = (UNDReplyRef)id;
 kern_return_t kr;
 int ulkey;

 if (reply == UND_REPLY_NULL)
  return KERN_INVALID_ARGUMENT;

 UNDReply_lock(reply);
 if (!reply->inprogress) {
  UNDReply_unlock(reply);
  return KERN_INVALID_ARGUMENT;
 }

 reply->inprogress = FALSE;
 if ((ulkey = reply->userLandNotificationKey) != 0) {
  UNDServerRef UNDServer;

  reply->userLandNotificationKey = 0;
  UNDReply_unlock(reply);

  UNDServer = UNDServer_reference();
  if (IP_VALID(UNDServer)) {
   kr = UNDCancelNotification_rpc(UNDServer,ulkey);
   UNDServer_deallocate(UNDServer);
  } else
   kr = MACH_SEND_INVALID_DEST;
 } else {
  UNDReply_unlock(reply);
  kr = KERN_SUCCESS;
 }
 UNDReply_deallocate(reply);
 return kr;
}
