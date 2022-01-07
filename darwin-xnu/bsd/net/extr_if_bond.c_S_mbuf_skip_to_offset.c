
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct mbuf {int m_len; struct mbuf* m_next; } ;
typedef int int32_t ;



__attribute__((used)) static struct mbuf *
S_mbuf_skip_to_offset(struct mbuf * m, int32_t * offset)
{
    int len;

    len = m->m_len;
    while (*offset >= len) {
 *offset -= len;
 m = m->m_next;
 if (m == ((void*)0)) {
     break;
 }
 len = m->m_len;
    }
    return (m);
}
