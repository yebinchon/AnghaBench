
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 unsigned char SKDP_END_CHAR ;
 unsigned char SKDP_ESC_CHAR ;
 unsigned char SKDP_START_CHAR ;

__attribute__((used)) static void kdp_serial_out(unsigned char byte, void (*outFunc)(char))
{

 if(byte == SKDP_START_CHAR || byte == SKDP_END_CHAR || byte == SKDP_ESC_CHAR || byte == '\n')
 {
  outFunc(SKDP_ESC_CHAR);
  byte = ~byte;
 }
 outFunc(byte);
}
