
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int type; int filename; } ;
typedef TYPE_1__ CARTRIDGE_image_t ;


 int CARTRIDGE_BAD_FORMAT ;
 int CARTRIDGE_CANT_OPEN ;
 int CARTRIDGE_NONE ;
 int CARTRIDGE_SetType (TYPE_1__*,int) ;
 int CARTRIDGE_UNKNOWN ;
 int* CARTRIDGE_kb ;
 int InsertCartridge (int ,TYPE_1__*) ;
 int Log_print (char*,int ,char*) ;

__attribute__((used)) static void InitInsert(CARTRIDGE_image_t *cart)
{
 if (cart->type != CARTRIDGE_NONE) {
  int tmp_type = cart->type;
  int res = InsertCartridge(cart->filename, cart);
  if (res < 0) {
   Log_print("Error inserting cartridge \"%s\": %s", cart->filename,
   res == CARTRIDGE_CANT_OPEN ? "Can't open file" :
   res == CARTRIDGE_BAD_FORMAT ? "Bad format" :
                                            "Bad checksum");
   cart->type = CARTRIDGE_NONE;
  }
  if (cart->type == CARTRIDGE_UNKNOWN && CARTRIDGE_kb[tmp_type] == res)
   CARTRIDGE_SetType(cart, tmp_type);
 }
}
