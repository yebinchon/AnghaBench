
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int cartid; int bupram; } ;


 int BupRam ;
 TYPE_1__* CartridgeArea ;
 int FormatBackupRam (int ,int) ;
 int LOG (char*) ;

void BupFormat(u32 device)
{
   switch (device)
   {
      case 0:
         FormatBackupRam(BupRam, 0x10000);
         break;
      case 1:
         if ((CartridgeArea->cartid & 0xF0) == 0x20)
         {
            switch (CartridgeArea->cartid & 0xF)
            {
               case 1:
                  FormatBackupRam(CartridgeArea->bupram, 0x100000);
                  break;
               case 2:
                  FormatBackupRam(CartridgeArea->bupram, 0x200000);
                  break;
               case 3:
                  FormatBackupRam(CartridgeArea->bupram, 0x400000);
                  break;
               case 4:
                  FormatBackupRam(CartridgeArea->bupram, 0x800000);
                  break;
               default: break;
            }
         }
         break;
      case 2:
         LOG("Formatting FDD not supported\n");
      default: break;
   }
}
