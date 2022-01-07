
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


typedef int uint32_t ;
typedef int mach_port_t ;
typedef int kern_return_t ;
struct TYPE_4__ {int l_whence; int l_type; int l_pid; int l_len; int l_start; } ;
struct TYPE_5__ {int lm_fh; int lm_fh_len; int lm_cred; int lm_addr; TYPE_1__ lm_fl; int lm_xid; int lm_flags; int lm_version; } ;
typedef TYPE_2__ LOCKD_MSG ;


 int EAGAIN ;
 int EINTR ;
 int ENOTSUP ;
 int IPC_PORT_NULL ;
 int IPC_PORT_VALID (int ) ;
 int KERN_SUCCESS ;
 int MACH_MAX_TRIES ;

 int MIG_SERVER_DIED ;
 int host_get_lockd_port (int ,int *) ;
 int host_priv_self () ;
 int ipc_port_release_send (int ) ;
 int lockd_request (int ,int ,int ,int ,int ,int ,int ,int ,int ,int *,int *,int ,int ) ;
 int printf (char*,int) ;

int
nfs_lockd_send_request(LOCKD_MSG *msg, int interruptable)
{
 kern_return_t kr;
 int retries = 0;
 mach_port_t lockd_port = IPC_PORT_NULL;

 kr = host_get_lockd_port(host_priv_self(), &lockd_port);
 if (kr != KERN_SUCCESS || !IPC_PORT_VALID(lockd_port))
  return (ENOTSUP);

 do {

  do {
   kr = lockd_request(
    lockd_port,
    msg->lm_version,
    msg->lm_flags,
    msg->lm_xid,
    msg->lm_fl.l_start,
    msg->lm_fl.l_len,
    msg->lm_fl.l_pid,
    msg->lm_fl.l_type,
    msg->lm_fl.l_whence,
    (uint32_t *)&msg->lm_addr,
    (uint32_t *)&msg->lm_cred,
    msg->lm_fh_len,
    msg->lm_fh);
   if (kr != KERN_SUCCESS)
    printf("lockd_request received %d!\n", kr);
  } while (!interruptable && kr == 128);
 } while (kr == MIG_SERVER_DIED && retries++ < MACH_MAX_TRIES);

 ipc_port_release_send(lockd_port);
 switch (kr) {
 case 128:
  return (EINTR);
 default:





  return (EAGAIN);
 }
}
