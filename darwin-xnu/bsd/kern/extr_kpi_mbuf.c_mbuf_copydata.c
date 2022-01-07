
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef TYPE_1__* mbuf_t ;
typedef int errno_t ;
struct TYPE_4__ {size_t m_len; struct TYPE_4__* m_next; } ;


 int EINVAL ;
 int bcopy (scalar_t__,void*,int) ;
 int caddr_t ;
 scalar_t__ mtod (TYPE_1__*,int ) ;

errno_t
mbuf_copydata(const mbuf_t m0, size_t off, size_t len, void *out_data)
{

 int count;
 mbuf_t m = m0;

 while (off > 0) {
  if (m == 0)
   return (EINVAL);
  if (off < (size_t)m->m_len)
   break;
  off -= m->m_len;
  m = m->m_next;
 }
 while (len > 0) {
  if (m == 0)
   return (EINVAL);
  count = m->m_len - off > len ? len : m->m_len - off;
  bcopy(mtod(m, caddr_t) + off, out_data, count);
  len -= count;
  out_data = ((char *)out_data) + count;
  off = 0;
  m = m->m_next;
 }

 return (0);
}
