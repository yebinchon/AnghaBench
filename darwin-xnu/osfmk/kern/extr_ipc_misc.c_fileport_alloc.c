
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct fileglob {int dummy; } ;
typedef scalar_t__ ipc_port_t ;
typedef int ipc_kobject_t ;


 int IKOT_FILEPORT ;
 scalar_t__ IP_NULL ;
 int IP_VALID (scalar_t__) ;
 int ip_lock (scalar_t__) ;
 int ipc_kobject_set (scalar_t__,int ,int ) ;
 scalar_t__ ipc_port_alloc_kernel () ;
 scalar_t__ ipc_port_make_send (scalar_t__) ;
 scalar_t__ ipc_port_make_sonce_locked (scalar_t__) ;
 int ipc_port_nsrequest (scalar_t__,int,scalar_t__,scalar_t__*) ;
 int panic (char*) ;

ipc_port_t
fileport_alloc(struct fileglob *fg)
{
 ipc_port_t fileport;
 ipc_port_t sendport;
 ipc_port_t notifyport;

 fileport = ipc_port_alloc_kernel();
 if (fileport == IP_NULL) {
  goto out;
 }

 ipc_kobject_set(fileport, (ipc_kobject_t)fg, IKOT_FILEPORT);
 ip_lock(fileport);
 notifyport = ipc_port_make_sonce_locked(fileport);
 ipc_port_nsrequest(fileport, 1, notifyport, &notifyport);

 sendport = ipc_port_make_send(fileport);
 if (!IP_VALID(sendport)) {
  panic("Couldn't allocate send right for fileport!\n");
 }

out:
 return fileport;
}
