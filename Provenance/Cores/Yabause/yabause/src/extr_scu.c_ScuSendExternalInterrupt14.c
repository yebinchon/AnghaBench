
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int SendInterrupt (int,int,int,int) ;

void ScuSendExternalInterrupt14(void) {
   SendInterrupt(0x5E, 0x1, 0x8000, 0x40000000);
}
