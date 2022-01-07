
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kern_return_t ;
typedef int UNDServerRef ;


 scalar_t__ IP_VALID (int ) ;
 int MACH_SEND_INVALID_DEST ;
 int UNDDisplayNoticeSimple_rpc (int ,int,unsigned int,char*,char*,char*,char*,char*,char*) ;
 int UNDServer_deallocate (int ) ;
 int UNDServer_reference () ;

kern_return_t
KUNCUserNotificationDisplayNotice(
 int noticeTimeout,
 unsigned flags,
 char *iconPath,
 char *soundPath,
 char *localizationPath,
 char *alertHeader,
 char *alertMessage,
 char *defaultButtonTitle)
{
 UNDServerRef UNDServer;

 UNDServer = UNDServer_reference();
 if (IP_VALID(UNDServer)) {
  kern_return_t kr;
  kr = UNDDisplayNoticeSimple_rpc(UNDServer,
     noticeTimeout,
     flags,
     iconPath,
     soundPath,
     localizationPath,
     alertHeader,
     alertMessage,
     defaultButtonTitle);
  UNDServer_deallocate(UNDServer);
  return kr;
 }
 return MACH_SEND_INVALID_DEST;
}
