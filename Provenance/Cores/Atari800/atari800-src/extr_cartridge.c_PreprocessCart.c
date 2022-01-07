
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


typedef int UBYTE ;
struct TYPE_3__ {int type; int size; int* image; } ;
typedef TYPE_1__ CARTRIDGE_image_t ;




 scalar_t__ Util_malloc (unsigned int const) ;
 int free (int*) ;

__attribute__((used)) static void PreprocessCart(CARTRIDGE_image_t *cart)
{
 switch (cart->type) {
 case 128:
 case 129: {
  unsigned int i;
  unsigned int const size = cart->size << 10;
  UBYTE *new_image = (UBYTE *) Util_malloc(size);


  for (i = 0; i < size; i++) {
   unsigned int const rom_addr =
    (i & 0x0001 ? 0x0040 : 0) |
    (i & 0x0002 ? 0x0080 : 0) |
    (i & 0x0004 ? 0x1000 : 0) |
    (i & 0x0008 ? 0x8000 : 0) |
    (i & 0x0010 ? 0x4000 : 0) |
    (i & 0x0020 ? 0x2000 : 0) |
    (i & 0x0040 ? 0x0100 : 0) |
    (i & 0x0080 ? 0x0020 : 0) |
    (i & 0x0100 ? 0x0010 : 0) |
    (i & 0x0200 ? 0x0008 : 0) |
    (i & 0x0400 ? 0x0001 : 0) |
    (i & 0x0800 ? 0x0002 : 0) |
    (i & 0x1000 ? 0x0004 : 0) |
    (i & 0x2000 ? 0x0200 : 0) |
    (i & 0x4000 ? 0x0800 : 0) |
    (i & 0x8000 ? 0x0400 : 0) |
    (i & 0x10000 ? 0x10000 : 0);

   UBYTE byte = cart->image[rom_addr];
   new_image[i] =
     (byte & 0x01 ? 0x02 : 0) |
     (byte & 0x02 ? 0x08 : 0) |
     (byte & 0x04 ? 0x80 : 0) |
     (byte & 0x08 ? 0x40 : 0) |
     (byte & 0x10 ? 0x01 : 0) |
     (byte & 0x20 ? 0x04 : 0) |
     (byte & 0x40 ? 0x20 : 0) |
     (byte & 0x80 ? 0x10 : 0);
  }
  free(cart->image);
  cart->image = new_image;
  break;
 }
 }
}
