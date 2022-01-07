
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct zipent {int compression_method; scalar_t__ compressed_size; scalar_t__ uncompressed_size; int version_needed_to_extract; int os_needed_to_extract; scalar_t__ disk_number_start; } ;
struct TYPE_5__ {scalar_t__ number_of_this_disk; int zip; int fp; } ;
typedef TYPE_1__ ZIP ;


 int ERROR_CORRUPT ;
 int ERROR_UNSUPPORTED ;
 int errormsg (char*,int ,int ) ;
 scalar_t__ inflate_file (int ,scalar_t__,unsigned char*,scalar_t__) ;
 int readcompresszip (TYPE_1__*,struct zipent*,char*) ;
 scalar_t__ seekcompresszip (TYPE_1__*,struct zipent*) ;

int readuncompresszip(ZIP* zip, struct zipent* ent, char* data) {
 if (ent->compression_method == 0x0000) {



  if (ent->compressed_size != ent->uncompressed_size) {
   errormsg("Wrong uncompressed size in store compression", ERROR_CORRUPT,zip->zip);
   return -3;
  }

  return readcompresszip(zip,ent,data);
 } else if (ent->compression_method == 0x0008) {

  if (ent->version_needed_to_extract > 0x14) {
   errormsg("Version too new", ERROR_UNSUPPORTED,zip->zip);
   return -2;
  }

  if (ent->os_needed_to_extract != 0x00) {
   errormsg("OS not supported", ERROR_UNSUPPORTED,zip->zip);
   return -2;
  }

  if (ent->disk_number_start != zip->number_of_this_disk) {
   errormsg("Cannot span disks", ERROR_UNSUPPORTED,zip->zip);
   return -2;
  }


  if (seekcompresszip(zip,ent)!=0) {
   return -1;
  }


  if (inflate_file( zip->fp, ent->compressed_size, (unsigned char*)data, ent->uncompressed_size))
  {
   errormsg("Inflating compressed data", ERROR_CORRUPT, zip->zip);
   return -3;
  }

  return 0;
 } else {
  errormsg("Compression method unsupported", ERROR_UNSUPPORTED, zip->zip);
  return -2;
 }
}
