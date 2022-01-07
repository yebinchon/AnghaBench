
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_12__ TYPE_6__ ;
typedef struct TYPE_11__ TYPE_4__ ;
typedef struct TYPE_10__ TYPE_2__ ;
typedef struct TYPE_9__ TYPE_1__ ;


struct TYPE_9__ {int ctl_addr; int fad_start; int fad_end; int file_offset; int sector_size; int file_size; scalar_t__ interleaved_sub; scalar_t__ file_id; int * fp; } ;
typedef TYPE_1__ track_info_struct ;
typedef int session_info_struct ;
struct TYPE_10__ {TYPE_4__* dict; } ;
typedef TYPE_2__ ccd_struct ;
struct TYPE_12__ {int session_num; TYPE_4__* session; } ;
struct TYPE_11__ {int fad_start; int track_num; int fad_end; TYPE_1__* track; } ;
typedef int FILE ;


 int GetIntCCD (TYPE_2__*,char*,char*) ;
 scalar_t__ LoadParseCCD (int *,TYPE_2__*) ;
 void* MSF_TO_FAD (int,int,int) ;
 int SEEK_SET ;
 int YAB_ERR_FILEREAD ;
 int YAB_ERR_MEMORYALLOC ;
 int YAB_ERR_OTHER ;
 int YabSetError (int ,char const*) ;
 TYPE_6__ disc ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int free (TYPE_4__*) ;
 int fseek (int *,int ,int ) ;
 TYPE_4__* malloc (int) ;
 int memset (TYPE_1__*,int ,int) ;
 int sprintf (char*,char*,int) ;
 int strcpy (char*,char const*) ;
 char* strrchr (char*,char) ;

__attribute__((used)) static int LoadCCD(const char *ccd_filename, FILE *iso_file)
{
 int i;
 ccd_struct ccd;
 int num_toc;
 char img_filename[512];
 char *ext;
 FILE *fp;

 strcpy(img_filename, ccd_filename);
 ext = strrchr(img_filename, '.');
 strcpy(ext, ".img");
 fp = fopen(img_filename, "rb");

 if (fp == ((void*)0))
 {
  YabSetError(YAB_ERR_FILEREAD, img_filename);
  return -1;
 }

 fseek(iso_file, 0, SEEK_SET);


 if (LoadParseCCD(iso_file, &ccd))
 {
  fclose(fp);
  YabSetError(YAB_ERR_FILEREAD, ccd_filename);
  return -1;
 }

 num_toc = GetIntCCD(&ccd, "DISC", "TocEntries");
 disc.session_num = GetIntCCD(&ccd, "DISC", "Sessions");
 if (disc.session_num != 1)
 {
  fclose(fp);
  YabSetError(YAB_ERR_OTHER, "Sessions more than 1 are unsupported");
  return -1;
 }

 disc.session = malloc(sizeof(session_info_struct) * disc.session_num);
 if (disc.session == ((void*)0))
 {
  fclose(fp);
  free(ccd.dict);
  YabSetError(YAB_ERR_MEMORYALLOC, ((void*)0));
  return -1;
 }

 if (GetIntCCD(&ccd, "DISC", "DataTracksScrambled"))
 {
  fclose(fp);
  free(ccd.dict);
  free(disc.session);
  YabSetError(YAB_ERR_OTHER, "CCD Scrambled Tracks not supported");
  return -1;
 }


 for (i = 0; i < num_toc; i++)
 {
  char sect_name[64];
  int point;

  sprintf(sect_name, "Entry %d", i);
  point = GetIntCCD(&ccd, sect_name, "Point");

  if (point == 0xA1)
  {
   int ses = GetIntCCD(&ccd, sect_name, "Session");

   disc.session[ses-1].fad_start = 150;
   disc.session[ses-1].track_num=GetIntCCD(&ccd, sect_name, "PMin");;
   disc.session[ses-1].track = (track_info_struct *)malloc(disc.session[ses-1].track_num * sizeof(track_info_struct));
   if (disc.session[ses-1].track == ((void*)0))
   {
    fclose(fp);
    free(ccd.dict);
    free(disc.session);
    YabSetError(YAB_ERR_MEMORYALLOC, ((void*)0));
    return -1;
   }
   memset(disc.session[ses-1].track, 0, disc.session[ses-1].track_num * sizeof(track_info_struct));
  }
 }


 for (i = 0; i < num_toc; i++)
 {
  char sect_name[64];
  int ses, point, adr, control, trackno, amin, asec, aframe;
  int alba, zero, pmin, psec, pframe, plba;

  sprintf(sect_name, "Entry %d", i);

  ses = GetIntCCD(&ccd, sect_name, "Session");
  point = GetIntCCD(&ccd, sect_name, "Point");
  adr = GetIntCCD(&ccd, sect_name, "ADR");
  control = GetIntCCD(&ccd, sect_name, "Control");
  trackno = GetIntCCD(&ccd, sect_name, "TrackNo");
  amin = GetIntCCD(&ccd, sect_name, "AMin");
  asec = GetIntCCD(&ccd, sect_name, "ASec");
  aframe = GetIntCCD(&ccd, sect_name, "AFrame");
  alba = GetIntCCD(&ccd, sect_name, "ALBA");
  zero = GetIntCCD(&ccd, sect_name, "Zero");
  pmin = GetIntCCD(&ccd, sect_name, "PMin");
  psec = GetIntCCD(&ccd, sect_name, "PSec");
  pframe = GetIntCCD(&ccd, sect_name, "PFrame");
  plba = GetIntCCD(&ccd, sect_name, "PLBA");

  if(point >= 1 && point <= 99)
  {
   track_info_struct *track=&disc.session[ses-1].track[point-1];
   track->ctl_addr = (control << 4) | adr;
   track->fad_start = MSF_TO_FAD(pmin, psec, pframe);
   if (point >= 2)
      disc.session[ses-1].track[point-2].fad_end = track->fad_start-1;
   track->file_offset = plba*2352;
   track->sector_size = 2352;
   track->fp = fp;
   track->file_size = (track->fad_end+1-track->fad_start)*2352;
   track->file_id = 0;
   track->interleaved_sub = 0;
  }
  else if (point == 0xA2)
  {
   disc.session[ses-1].fad_end = MSF_TO_FAD(pmin, psec, pframe);
   disc.session[ses-1].track[disc.session[ses-1].track_num-1].fad_end = disc.session[ses-1].fad_end;
  }
 }

 fclose(iso_file);

 return 0;
}
