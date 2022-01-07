
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint64_t ;
typedef int uint32_t ;
struct socket {int so_flags1; struct cfil_info* so_cfil; int * so_cfil_db; } ;
struct cfil_msg_hdr {int cfm_sock_id; } ;
struct cfil_msg_bless_client {int cfb_client_uuid; } ;
struct cfil_info {int cfi_sock_id; scalar_t__ cfi_hash_entry; } ;
typedef int errno_t ;


 int CFIL_LOG (int ,char*,char*,int ,int ) ;
 int CFM_MAX_OFFSET ;
 int ENOENT ;
 int LOG_ERR ;
 int SOF1_CONTENT_FILTER_SKIP ;
 scalar_t__ VM_KERNEL_ADDRPERM (struct socket*) ;
 int cfil_action_data_pass (struct socket*,struct cfil_info*,int ,int,int ,int ) ;
 struct cfil_info* cfil_db_get_cfil_info (int *,int ) ;
 struct socket* cfil_socket_from_client_uuid (int ,int*) ;
 int socket_unlock (struct socket*,int) ;

int
cfil_action_bless_client(uint32_t kcunit, struct cfil_msg_hdr *msghdr)
{
 errno_t error = 0;
 struct cfil_info *cfil_info = ((void*)0);

 bool cfil_attached = 0;
 struct cfil_msg_bless_client *blessmsg = (struct cfil_msg_bless_client *)msghdr;


 struct socket *so = cfil_socket_from_client_uuid(blessmsg->cfb_client_uuid, &cfil_attached);
 if (so == ((void*)0)) {
  error = ENOENT;
 } else {

  cfil_info = (so->so_cfil_db != ((void*)0)) ?
   cfil_db_get_cfil_info(so->so_cfil_db, msghdr->cfm_sock_id) : so->so_cfil;

  if (cfil_attached) {
   (void)cfil_action_data_pass(so, cfil_info, kcunit, 1, CFM_MAX_OFFSET, CFM_MAX_OFFSET);
   (void)cfil_action_data_pass(so, cfil_info, kcunit, 0, CFM_MAX_OFFSET, CFM_MAX_OFFSET);
  } else {
   so->so_flags1 |= SOF1_CONTENT_FILTER_SKIP;
  }
  socket_unlock(so, 1);
 }

 return (error);
}
