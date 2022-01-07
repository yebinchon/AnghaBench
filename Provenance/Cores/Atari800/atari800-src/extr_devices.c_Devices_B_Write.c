
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int UBYTE ;
struct TYPE_2__ {int pos; int* url; } ;


 int CPU_ClrN ;
 int CPU_SetN ;
 int CPU_regA ;
 int CPU_regY ;
 int Log_print (char*,int,int,int) ;
 TYPE_1__ dev_b_status ;
 scalar_t__ devbug ;

__attribute__((used)) static void Devices_B_Write(void)
{
 UBYTE byte;

 byte = CPU_regA;

 if (devbug)
  Log_print("B: WRITE ([%d] %02X, '%c')", dev_b_status.pos, byte, byte);

 if (byte == 0x9b)
  byte = '\0';

 if (dev_b_status.pos >= sizeof(dev_b_status.url) - 1) {
  CPU_regY = 135;
  CPU_SetN;
  return;
 }
 dev_b_status.url[dev_b_status.pos++] = byte;

 CPU_regY = 1;
 CPU_ClrN;
}
