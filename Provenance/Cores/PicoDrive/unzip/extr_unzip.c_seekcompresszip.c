
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct zipent {long offset_lcl_hdr_frm_frst_disk; } ;
struct TYPE_4__ {int zip; int fp; } ;
typedef TYPE_1__ ZIP ;
typedef int UINT16 ;


 int ERROR_CORRUPT ;
 int SEEK_SET ;
 int ZIPFNLN ;
 int ZIPNAME ;
 int ZIPXTRALN ;
 int errormsg (char*,int ,int ) ;
 int fread (char*,int,int,int ) ;
 scalar_t__ fseek (int ,long,int ) ;
 int read_word (char*) ;
 int revivezip (TYPE_1__*) ;

int seekcompresszip(ZIP* zip, struct zipent* ent) {
 char buf[ZIPNAME];
 long offset;

 if (!zip->fp) {
  if (!revivezip(zip))
   return -1;
 }

 if (fseek(zip->fp, ent->offset_lcl_hdr_frm_frst_disk, SEEK_SET)!=0) {
  errormsg ("Seeking to header", ERROR_CORRUPT, zip->zip);
  return -1;
 }

 if (fread(buf, ZIPNAME, 1, zip->fp)!=1) {
  errormsg ("Reading header", ERROR_CORRUPT, zip->zip);
  return -1;
 }

 {
  UINT16 filename_length = read_word (buf+ZIPFNLN);
  UINT16 extra_field_length = read_word (buf+ZIPXTRALN);


  offset = ent->offset_lcl_hdr_frm_frst_disk + ZIPNAME + filename_length + extra_field_length;

  if (fseek(zip->fp, offset, SEEK_SET) != 0) {
   errormsg ("Seeking to compressed data", ERROR_CORRUPT, zip->zip);
   return -1;
  }

 }

 return 0;
}
