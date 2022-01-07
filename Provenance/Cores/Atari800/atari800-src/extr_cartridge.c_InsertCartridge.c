
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


typedef char UBYTE ;
struct TYPE_4__ {char const* filename; char* image; int type; int size; } ;
typedef int FILE ;
typedef TYPE_1__ CARTRIDGE_image_t ;


 int CARTRIDGE_BAD_CHECKSUM ;
 int CARTRIDGE_BAD_FORMAT ;
 int CARTRIDGE_CANT_OPEN ;
 int CARTRIDGE_Checksum (char*,int) ;
 int CARTRIDGE_LAST_SUPPORTED ;
 int CARTRIDGE_NONE ;
 int CARTRIDGE_UNKNOWN ;
 int* CARTRIDGE_kb ;
 int InitCartridge (TYPE_1__*) ;
 int Log_print (char*) ;
 int Util_flen (int *) ;
 scalar_t__ Util_malloc (int) ;
 int Util_rewind (int *) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 int fread (char*,int,int,int *) ;
 int free (char*) ;
 int strcpy (char const*,char const*) ;

__attribute__((used)) static int InsertCartridge(const char *filename, CARTRIDGE_image_t *cart)
{
 FILE *fp;
 int len;
 int type;
 UBYTE header[16];


 fp = fopen(filename, "rb");
 if (fp == ((void*)0))
  return CARTRIDGE_CANT_OPEN;

 len = Util_flen(fp);
 Util_rewind(fp);


 if (cart->filename != filename)

  strcpy(cart->filename, filename);


 if ((len & 0x3ff) == 0) {

  cart->image = (UBYTE *) Util_malloc(len);
  if (fread(cart->image, 1, len, fp) < len) {
   Log_print("Error reading cartridge.\n");
  }
  fclose(fp);

  cart->type = CARTRIDGE_NONE;
  len >>= 10;
  cart->size = len;
  for (type = 1; type <= CARTRIDGE_LAST_SUPPORTED; type++)
   if (CARTRIDGE_kb[type] == len) {
    if (cart->type == CARTRIDGE_NONE) {
     cart->type = type;
    } else {

     cart->type = CARTRIDGE_UNKNOWN;
     return len;
    }
   }
  if (cart->type != CARTRIDGE_NONE) {
   InitCartridge(cart);
   return 0;
  }
  free(cart->image);
  cart->image = ((void*)0);
  return CARTRIDGE_BAD_FORMAT;
 }

 if (fread(header, 1, 16, fp) < 16) {
  Log_print("Error reading cartridge.\n");
 }
 if ((header[0] == 'C') &&
  (header[1] == 'A') &&
  (header[2] == 'R') &&
  (header[3] == 'T')) {
  type = (header[4] << 24) |
   (header[5] << 16) |
   (header[6] << 8) |
   header[7];
  if (type >= 1 && type <= CARTRIDGE_LAST_SUPPORTED) {
   int checksum;
   int result;
   len = CARTRIDGE_kb[type] << 10;
   cart->size = CARTRIDGE_kb[type];

   cart->image = (UBYTE *) Util_malloc(len);
   if (fread(cart->image, 1, len, fp) < len) {
    Log_print("Error reading cartridge.\n");
   }
   fclose(fp);
   checksum = (header[8] << 24) |
    (header[9] << 16) |
    (header[10] << 8) |
    header[11];
   cart->type = type;
   result = checksum == CARTRIDGE_Checksum(cart->image, len) ? 0 : CARTRIDGE_BAD_CHECKSUM;
   InitCartridge(cart);
   return result;
  }
 }
 fclose(fp);
 return CARTRIDGE_BAD_FORMAT;
}
