
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kern_return_t ;
typedef int UNDServerRef ;


 scalar_t__ IP_VALID (int ) ;
 int MACH_SEND_INVALID_DEST ;
 int UNDDisplayAlertSimple_rpc (int ,int,unsigned int,char*,char*,char*,char*,char*,char*,char*,char*,unsigned int*) ;
 int UNDServer_deallocate (int ) ;
 int UNDServer_reference () ;

kern_return_t
KUNCUserNotificationDisplayAlert(
 int alertTimeout,
 unsigned flags,
 char *iconPath,
 char *soundPath,
 char *localizationPath,
 char *alertHeader,
 char *alertMessage,
 char *defaultButtonTitle,
 char *alternateButtonTitle,
 char *otherButtonTitle,
 unsigned *responseFlags)
{
 UNDServerRef UNDServer;

 UNDServer = UNDServer_reference();
 if (IP_VALID(UNDServer)) {
  kern_return_t kr;
  kr = UNDDisplayAlertSimple_rpc(UNDServer,
           alertTimeout,
           flags,
           iconPath,
           soundPath,
           localizationPath,
           alertHeader,
           alertMessage,
           defaultButtonTitle,
           alternateButtonTitle,
           otherButtonTitle,
           responseFlags);
  UNDServer_deallocate(UNDServer);
  return kr;
 }
 return MACH_SEND_INVALID_DEST;
}
