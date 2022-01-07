
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SendInterrupt (int,int,int,int) ;

void ScuSendVBlankIN(void) {
   SendInterrupt(0x40, 0xF, 0x0001, 0x0001);
}
