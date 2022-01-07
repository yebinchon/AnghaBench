
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_1__ ;


typedef int kern_return_t ;
typedef TYPE_1__* UNDReplyRef ;
struct TYPE_6__ {int userLandNotificationKey; scalar_t__ inprogress; } ;


 int KERN_INVALID_ARGUMENT ;
 int KERN_SUCCESS ;
 int UNDReply_lock (TYPE_1__*) ;
 int UNDReply_unlock (TYPE_1__*) ;
 TYPE_1__* UND_REPLY_NULL ;

kern_return_t
UNDNotificationCreated_rpc (
        UNDReplyRef reply,
        int userLandNotificationKey)
{
 if (reply == UND_REPLY_NULL)
  return KERN_INVALID_ARGUMENT;

 UNDReply_lock(reply);
 if (reply->inprogress || reply->userLandNotificationKey != -1) {
  UNDReply_unlock(reply);
  return KERN_INVALID_ARGUMENT;
 }
 reply->userLandNotificationKey = userLandNotificationKey;
 UNDReply_unlock(reply);
 return KERN_SUCCESS;
}
