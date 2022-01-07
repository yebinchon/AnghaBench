
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint32_t ;
typedef int uint16_t ;
struct ether_header {int ether_type; int * ether_dhost; } ;



__attribute__((used)) static uint32_t
ether_header_hash(struct ether_header * eh_p)
{
    uint32_t h;


    h = (*((uint16_t *)&eh_p->ether_dhost[4]) << 16)
 | eh_p->ether_type;
    h ^= *((uint32_t *)&eh_p->ether_dhost[0]);
    return (h);
}
