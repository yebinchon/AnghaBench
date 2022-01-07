
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UBYTE ;


 scalar_t__ emuos_h ;
 int memcpy (int *,scalar_t__,int) ;

void MEMORY_GetCharset(UBYTE *cs)
{

 memcpy(cs, emuos_h + 0x200, 0x100);
 memcpy(cs + 0x100, emuos_h, 0x200);
 memcpy(cs + 0x300, emuos_h + 0x300, 0x100);
}
