
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int kern_return_t ;
typedef int UNDServerRef ;


 scalar_t__ IP_VALID (int ) ;
 int MACH_SEND_INVALID_DEST ;
 int UNDExecute_rpc (int ,char*,int,int) ;
 int UNDServer_deallocate (int ) ;
 int UNDServer_reference () ;

kern_return_t KUNCExecute(char executionPath[1024], int uid, int gid)
{

 UNDServerRef UNDServer;

 UNDServer = UNDServer_reference();
 if (IP_VALID(UNDServer)) {
  kern_return_t kr;
  kr = UNDExecute_rpc(UNDServer, executionPath, uid, gid);
  UNDServer_deallocate(UNDServer);
  return kr;
 }
 return MACH_SEND_INVALID_DEST;
}
