
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int u32 ;
struct TYPE_2__ {int carttype; scalar_t__ filename; scalar_t__ bupram; scalar_t__ rom; } ;






 int CART_PAR ;
 TYPE_1__* CartridgeArea ;
 scalar_t__ T123Save (scalar_t__,int,int,scalar_t__) ;
 int YAB_ERR_FILEWRITE ;
 int YabSetError (int ,void*) ;

void CartFlush(void){
   if (CartridgeArea)
   {
      if (CartridgeArea->carttype == CART_PAR)
      {
         if (CartridgeArea->rom)
         {
            if (T123Save(CartridgeArea->rom, 0x40000, 2, CartridgeArea->filename) != 0)
               YabSetError(YAB_ERR_FILEWRITE, (void *)CartridgeArea->filename);
         }
      }

      if (CartridgeArea->bupram)
      {
         u32 size = 0;

         switch (CartridgeArea->carttype)
         {
            case 129:
            {
               size = 0x100000;
               break;
            }
            case 128:
            {
               size = 0x200000;
               break;
            }
            case 131:
            {
               size = 0x400000;
               break;
            }
            case 130:
            {
               size = 0x800000;
               break;
            }
         }

         if (size != 0)
         {
            if (T123Save(CartridgeArea->bupram, size, 1, CartridgeArea->filename) != 0)
               YabSetError(YAB_ERR_FILEWRITE, (void *)CartridgeArea->filename);
         }
      }
   }
}
