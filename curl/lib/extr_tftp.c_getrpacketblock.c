
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int* data; } ;
typedef TYPE_1__ tftp_packet_t ;



__attribute__((used)) static unsigned short getrpacketblock(const tftp_packet_t *packet)
{
  return (unsigned short)((packet->data[2] << 8) | packet->data[3]);
}
