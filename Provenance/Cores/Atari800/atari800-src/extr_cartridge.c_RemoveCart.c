
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {scalar_t__ type; int * image; } ;
typedef TYPE_1__ CARTRIDGE_image_t ;


 scalar_t__ CARTRIDGE_NONE ;
 int MapActiveCart () ;
 TYPE_1__* active_cart ;
 int free (int *) ;

__attribute__((used)) static void RemoveCart(CARTRIDGE_image_t *cart)
{
 if (cart->image != ((void*)0)) {
  free(cart->image);
  cart->image = ((void*)0);
 }
 if (cart->type != CARTRIDGE_NONE) {
  cart->type = CARTRIDGE_NONE;
  if (cart == active_cart)
   MapActiveCart();
 }
}
