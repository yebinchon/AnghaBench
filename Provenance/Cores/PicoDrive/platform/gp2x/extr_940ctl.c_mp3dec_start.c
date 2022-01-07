
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


struct TYPE_2__ {int mp3_len; int mp3_offs; scalar_t__ mp3_buffsel; } ;
typedef int FILE ;


 scalar_t__ CHECK_BUSY (int ) ;
 int JOB940_INVALIDATE_DCACHE ;
 int JOB940_MP3DECODE ;
 int JOB940_MP3RESET ;
 int MP3_SIZE_MAX ;
 int POPT_EXT_FM ;
 int PicoMessage (char*) ;
 int PicoOpt ;
 int SEEK_END ;
 int SEEK_SET ;
 int add_job_940 (int ) ;
 int feof (int *) ;
 int fread (int ,int,int ,int *) ;
 int fseek (int *,int ,int ) ;
 int ftell (int *) ;
 int * loaded_mp3 ;
 int mp3_mem ;
 int printf (char*) ;
 int reset_timing ;
 TYPE_1__* shared_ctl ;
 int wait_busy_940 (int ) ;

int mp3dec_start(FILE *f, int fpos_start)
{
 if (!(PicoOpt & POPT_EXT_FM)) {

  return -1;
 }

 if (loaded_mp3 != f)
 {
  if (PicoMessage != ((void*)0))
  {
   fseek(f, 0, SEEK_END);
   if (ftell(f) > 2*1024*1024)
    PicoMessage("Loading MP3...");
  }
  fseek(f, 0, SEEK_SET);
  fread(mp3_mem, 1, MP3_SIZE_MAX, f);
  if (!feof(f))
   printf("Warning: mp3 was too large, not all data loaded.\n");
  shared_ctl->mp3_len = ftell(f);
  loaded_mp3 = f;



  if (CHECK_BUSY(JOB940_MP3DECODE))
   wait_busy_940(JOB940_MP3DECODE);
  add_job_940(JOB940_INVALIDATE_DCACHE);
  reset_timing = 1;
 }

 shared_ctl->mp3_offs = fpos_start;
 shared_ctl->mp3_buffsel = 0;

 add_job_940(JOB940_MP3RESET);
 if (CHECK_BUSY(JOB940_MP3RESET))
  wait_busy_940(JOB940_MP3RESET);


 if (shared_ctl->mp3_offs < shared_ctl->mp3_len) {
  add_job_940(JOB940_MP3DECODE);
 }

 return 0;
}
