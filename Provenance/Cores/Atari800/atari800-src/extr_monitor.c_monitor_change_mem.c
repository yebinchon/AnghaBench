
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int UWORD ;
typedef int UBYTE ;


 scalar_t__ MEMORY_HARDWARE ;
 int MEMORY_HwPutByte (int,int ) ;
 int MEMORY_ROM_PutByte (int,int ) ;
 scalar_t__* MEMORY_attrib ;
 int MEMORY_dPutByte (int,int ) ;
 int MEMORY_writemap (int,int ) ;
 scalar_t__ get_hex (int*) ;
 int stub1 (int,int ) ;
 int stub2 (int,int ) ;

__attribute__((used)) static void monitor_change_mem(UWORD *addr)
{
 UWORD temp = 0;
 get_hex(addr);
 while (get_hex(&temp)) {




  if (MEMORY_attrib[*addr] == MEMORY_HARDWARE)
   MEMORY_HwPutByte(*addr, (UBYTE) temp);

  else
   MEMORY_dPutByte(*addr, (UBYTE) temp);
  (*addr)++;
  if (temp > 0xff) {




   if (MEMORY_attrib[*addr] == MEMORY_HARDWARE)
    MEMORY_HwPutByte(*addr, (UBYTE) (temp >> 8));

   else
    MEMORY_dPutByte(*addr, (UBYTE) (temp >> 8));
   (*addr)++;
  }
 }
}
