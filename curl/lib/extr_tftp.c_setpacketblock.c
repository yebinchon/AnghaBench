
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {unsigned char* data; } ;
typedef TYPE_1__ tftp_packet_t ;



__attribute__((used)) static void setpacketblock(tftp_packet_t *packet, unsigned short num)
{
  packet->data[2] = (unsigned char)(num >> 8);
  packet->data[3] = (unsigned char)(num & 0xff);
}
