
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int uint8_t ;


 int TLC59401_CHANNELS ;
 int memcpy (int ,int *,int) ;
 int txpacket ;

void TLC59401_SetPacket(uint8_t *buf) {

    memcpy(txpacket, buf, TLC59401_CHANNELS*3/2);
}
