
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef scalar_t__ u_int ;
typedef int u_char ;
struct mbuf {struct mbuf* m_next; int m_len; } ;


 int bcopy (int ,int *,scalar_t__) ;
 int mbuf_data (struct mbuf*) ;
 scalar_t__ min (int ,size_t) ;
 int panic (char*) ;

__attribute__((used)) static void
bpf_mcopy(struct mbuf * m, void *dst_arg, size_t len)
{
 u_int count;
 u_char *dst;

 dst = dst_arg;
 while (len > 0) {
  if (m == 0)
   panic("bpf_mcopy");
  count = min(m->m_len, len);
  bcopy(mbuf_data(m), dst, count);
  m = m->m_next;
  dst += count;
  len -= count;
 }
}
