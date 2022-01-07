
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_2__ ;
typedef struct TYPE_4__ TYPE_1__ ;


struct mbuf {int m_flags; } ;
struct m_tag {int dummy; } ;
struct cfil_tag {int cfil_faddr; int cfil_so_options; int cfil_so_state_change_cnt; } ;
struct cfil_info {struct cfil_hash_entry* cfi_hash_entry; TYPE_1__* cfi_so; } ;
struct TYPE_5__ {int ia46_addr4; } ;
struct TYPE_6__ {TYPE_2__ addr46; int addr6; } ;
struct cfil_hash_entry {scalar_t__ cfentry_family; int cfentry_fport; TYPE_3__ cfentry_faddr; } ;
struct TYPE_4__ {int so_options; int so_state_change_cnt; } ;


 scalar_t__ AF_INET ;
 scalar_t__ AF_INET6 ;
 int KERNEL_MODULE_TAG_ID ;
 int KERNEL_TAG_TYPE_CFIL_UDP ;
 int M_DONTWAIT ;
 int M_PKTHDR ;
 int fill_ip6_sockaddr_4_6 (int *,int *,int ) ;
 int fill_ip_sockaddr_4_6 (int *,int ,int ) ;
 struct m_tag* m_tag_create (int ,int ,int,int ,struct mbuf*) ;
 int m_tag_prepend (struct mbuf*,struct m_tag*) ;

struct m_tag *
cfil_udp_save_socket_state(struct cfil_info *cfil_info, struct mbuf *m)
{
 struct m_tag *tag = ((void*)0);
 struct cfil_tag *ctag = ((void*)0);
 struct cfil_hash_entry *hash_entry = ((void*)0);

 if (cfil_info == ((void*)0) || cfil_info->cfi_so == ((void*)0) ||
  cfil_info->cfi_hash_entry == ((void*)0) || m == ((void*)0) || !(m->m_flags & M_PKTHDR)) {
  return ((void*)0);
 }


 tag = m_tag_create(KERNEL_MODULE_TAG_ID, KERNEL_TAG_TYPE_CFIL_UDP,
        sizeof(struct cfil_tag), M_DONTWAIT, m);

 if (tag) {
  ctag = (struct cfil_tag*)(tag + 1);
  ctag->cfil_so_state_change_cnt = cfil_info->cfi_so->so_state_change_cnt;
  ctag->cfil_so_options = cfil_info->cfi_so->so_options;

  hash_entry = cfil_info->cfi_hash_entry;
  if (hash_entry->cfentry_family == AF_INET6) {
   fill_ip6_sockaddr_4_6(&ctag->cfil_faddr,
          &hash_entry->cfentry_faddr.addr6,
          hash_entry->cfentry_fport);
  } else if (hash_entry->cfentry_family == AF_INET) {
   fill_ip_sockaddr_4_6(&ctag->cfil_faddr,
         hash_entry->cfentry_faddr.addr46.ia46_addr4,
         hash_entry->cfentry_fport);
  }
  m_tag_prepend(m, tag);
  return (tag);
 }
 return ((void*)0);
}
