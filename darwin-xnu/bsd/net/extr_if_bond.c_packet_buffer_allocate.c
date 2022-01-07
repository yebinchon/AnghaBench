
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_2__ ;
typedef struct TYPE_6__ TYPE_1__ ;


struct ether_header {int dummy; } ;
typedef TYPE_2__* packet_buffer_ref ;
struct TYPE_6__ {int len; } ;
struct TYPE_7__ {int m_len; TYPE_1__ m_pkthdr; } ;


 int MCLBYTES ;
 scalar_t__ MHLEN ;
 int MT_DATA ;
 int M_PKTHDR ;
 int M_WAITOK ;
 TYPE_2__* m_getcl (int ,int ,int ) ;
 TYPE_2__* m_gethdr (int ,int ) ;
 int printf (char*,int,int) ;

__attribute__((used)) static packet_buffer_ref
packet_buffer_allocate(int length)
{
    packet_buffer_ref m;
    int size;


    size = length + sizeof(struct ether_header);
    if (size > (int)MHLEN) {
 if (size > (int)MCLBYTES) {
     printf("bond: packet_buffer_allocate size %d > max %u\n",
            size, MCLBYTES);
     return (((void*)0));
 }
 m = m_getcl(M_WAITOK, MT_DATA, M_PKTHDR);
    } else {
 m = m_gethdr(M_WAITOK, MT_DATA);
    }
    if (m == ((void*)0)) {
 return (((void*)0));
    }
    m->m_len = size;
    m->m_pkthdr.len = size;
    return (m);
}
