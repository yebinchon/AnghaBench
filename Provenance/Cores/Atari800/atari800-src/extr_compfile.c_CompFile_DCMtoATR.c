
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {int current_sector; int sectorcount; int sectorsize; int * fp; } ;
typedef int FILE ;
typedef TYPE_1__ ATR_Info ;


 int EOF ;
 int FALSE ;
 int Log_print (char*) ;
 int Util_rewind (int *) ;
 int dcm_pass (int *,TYPE_1__*) ;
 int fgetc (int *) ;
 int pad_till_sector (TYPE_1__*,int) ;
 int write_atr_header (TYPE_1__*) ;

int CompFile_DCMtoATR(FILE *infp, FILE *outfp)
{
 int archive_type;
 int archive_flags;
 ATR_Info ai;
 int pass_flags;
 int last_sector;
 archive_type = fgetc(infp);
 if (archive_type != 0xf9 && archive_type != 0xfa) {
  Log_print("This is not a DCM image");
  return FALSE;
 }
 archive_flags = fgetc(infp);
 if ((archive_flags & 0x1f) != 1) {
  Log_print("Expected pass one first");
  if (archive_type == 0xf9)
   Log_print("It seems that DCMs of a multi-file archive have been combined in wrong order");
  return FALSE;
 }
 ai.fp = outfp;
 ai.current_sector = 1;
 switch ((archive_flags >> 5) & 3) {
 case 0:
  ai.sectorcount = 720;
  ai.sectorsize = 128;
  break;
 case 1:
  ai.sectorcount = 720;
  ai.sectorsize = 256;
  break;
 case 2:
  ai.sectorcount = 1040;
  ai.sectorsize = 128;
  break;
 default:
  Log_print("Unrecognized density");
  return FALSE;
 }
 if (!write_atr_header(&ai))
  return FALSE;
 pass_flags = archive_flags;
 for (;;) {

  int block_type;
  if (!dcm_pass(infp, &ai))
   return FALSE;
  if (pass_flags & 0x80)
   break;
  block_type = fgetc(infp);
  if (block_type != archive_type) {
   if (block_type == EOF && archive_type == 0xf9) {
    Log_print("Multi-part archive error.");
    Log_print("To process these files, you must first combine the files into a single file.");



    Log_print("cat file1.dcm file2.dcm file3.dcm >newfile.dcm from the shell");

   }
   return FALSE;
  }
  pass_flags = fgetc(infp);
  if ((pass_flags ^ archive_flags) & 0x60) {
   Log_print("Density changed inside DCM archive?");
   return FALSE;
  }

 }
 last_sector = ai.current_sector - 1;
 if (last_sector <= ai.sectorcount)
  return pad_till_sector(&ai, ai.sectorcount + 1);

 ai.sectorcount = last_sector;
 Util_rewind(outfp);
 return write_atr_header(&ai);
}
