
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UWORD ;
typedef int UBYTE ;


 int Log_print (char*,int,int) ;
 int* MEMORY_mem ;
 int axlon_curbank ;
 int axlon_current_bankmask ;
 int* axlon_ram ;
 int memcpy (int*,int*,int) ;

__attribute__((used)) static void AxlonPutByte(UWORD addr, UBYTE byte)
{
 int newbank;

 if ((addr&0xff00) == 0x0f00) MEMORY_mem[addr] = byte;
 if ((addr&0xff) < 0xc0) return;



 newbank = (byte&axlon_current_bankmask);
 if (newbank == axlon_curbank) return;
 memcpy(axlon_ram + axlon_curbank*0x4000, MEMORY_mem + 0x4000, 0x4000);
 memcpy(MEMORY_mem + 0x4000, axlon_ram + newbank*0x4000, 0x4000);
 axlon_curbank = newbank;
}
