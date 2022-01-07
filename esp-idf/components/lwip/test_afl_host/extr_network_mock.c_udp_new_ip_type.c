
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int u8_t ;
struct udp_pcb {int dummy; } ;


 struct udp_pcb mock_pcb ;

struct udp_pcb * udp_new_ip_type(u8_t type)
{
    return &mock_pcb;
}
