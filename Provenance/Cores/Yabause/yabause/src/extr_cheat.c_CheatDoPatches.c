
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u8 ;
typedef int u16 ;
struct TYPE_2__ {int type; int addr; int val; int enable; } ;







 int MappedMemoryReadWord (int ) ;
 int MappedMemoryWriteByte (int ,int ) ;
 int MappedMemoryWriteLong (int ,int ) ;
 int MappedMemoryWriteWord (int ,int ) ;
 int SH2WriteNotify (int ,int) ;
 TYPE_1__* cheatlist ;

void CheatDoPatches(void)
{
   int i;

   for (i = 0; ; i++)
   {
      switch (cheatlist[i].type)
      {
         case 129:
            return;
         case 131:
            if (cheatlist[i].enable == 0)
               continue;
            if (MappedMemoryReadWord(cheatlist[i].addr) != cheatlist[i].val)
               return;
            break;
         case 132:
            if (cheatlist[i].enable == 0)
               continue;
            MappedMemoryWriteByte(cheatlist[i].addr, (u8)cheatlist[i].val);
            SH2WriteNotify(cheatlist[i].addr, 1);
            break;
         case 128:
            if (cheatlist[i].enable == 0)
               continue;
            MappedMemoryWriteWord(cheatlist[i].addr, (u16)cheatlist[i].val);
            SH2WriteNotify(cheatlist[i].addr, 2);
            break;
         case 130:
            if (cheatlist[i].enable == 0)
               continue;
            MappedMemoryWriteLong(cheatlist[i].addr, cheatlist[i].val);
            SH2WriteNotify(cheatlist[i].addr, 4);
            break;
      }
   }
}
