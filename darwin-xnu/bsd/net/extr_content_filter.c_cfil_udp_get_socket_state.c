
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
struct sockaddr {int dummy; } ;
struct mbuf {int dummy; } ;
struct m_tag {int dummy; } ;
struct cfil_tag {short cfil_so_options; int cfil_faddr; int cfil_so_state_change_cnt; } ;


 int KERNEL_MODULE_TAG_ID ;
 int KERNEL_TAG_TYPE_CFIL_UDP ;
 struct m_tag* m_tag_locate (struct mbuf*,int ,int ,int *) ;
 int m_tag_unlink (struct mbuf*,struct m_tag*) ;

struct m_tag *
cfil_udp_get_socket_state(struct mbuf *m, uint32_t *state_change_cnt, short *options,
        struct sockaddr **faddr)
{
 struct m_tag *tag = ((void*)0);
 struct cfil_tag *ctag = ((void*)0);

 tag = m_tag_locate(m, KERNEL_MODULE_TAG_ID, KERNEL_TAG_TYPE_CFIL_UDP, ((void*)0));
 if (tag) {
  ctag = (struct cfil_tag *)(tag + 1);
  if (state_change_cnt)
   *state_change_cnt = ctag->cfil_so_state_change_cnt;
  if (options)
   *options = ctag->cfil_so_options;
  if (faddr)
   *faddr = (struct sockaddr *) &ctag->cfil_faddr;





  m_tag_unlink(m, tag);
  return tag;
 }
 return ((void*)0);
}
