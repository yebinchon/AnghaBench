
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


typedef TYPE_1__* mbuf_t ;
typedef int errno_t ;
struct TYPE_5__ {size_t m_len; void* m_data; } ;


 int EINVAL ;
 scalar_t__ mbuf_datastart (TYPE_1__*) ;
 size_t mbuf_maxlen (TYPE_1__*) ;

errno_t
mbuf_setdata(mbuf_t mbuf, void *data, size_t len)
{
 size_t start = (size_t)((char *)mbuf_datastart(mbuf));
 size_t maxlen = mbuf_maxlen(mbuf);

 if ((size_t)data < start || ((size_t)data) + len > start + maxlen)
  return (EINVAL);
 mbuf->m_data = data;
 mbuf->m_len = len;

 return (0);
}
