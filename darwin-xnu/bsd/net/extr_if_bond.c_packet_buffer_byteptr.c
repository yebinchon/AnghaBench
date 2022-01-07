
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct ether_header {int dummy; } ;
typedef TYPE_1__* packet_buffer_ref ;
struct TYPE_3__ {void* m_data; } ;



__attribute__((used)) static void *
packet_buffer_byteptr(packet_buffer_ref buf)
{
    return (buf->m_data + sizeof(struct ether_header));
}
