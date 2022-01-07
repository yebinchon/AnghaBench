
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int type; } ;
typedef TYPE_1__ CARTRIDGE_image_t ;


 int CARTRIDGE_NONE ;
 int InitCartridge (TYPE_1__*) ;
 int RemoveCart (TYPE_1__*) ;

void CARTRIDGE_SetType(CARTRIDGE_image_t *cart, int type)
{
 cart->type = type;
 if (type == CARTRIDGE_NONE)


  RemoveCart(cart);
 InitCartridge(cart);
}
