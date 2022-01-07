
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_9__ TYPE_6__ ;
typedef struct TYPE_8__ TYPE_2__ ;
typedef struct TYPE_7__ TYPE_1__ ;


typedef int binpath ;
struct TYPE_7__ {scalar_t__ frame_count; } ;
struct TYPE_9__ {TYPE_1__ m; } ;
struct TYPE_8__ {int baseclock; int rate; } ;
typedef int FILE ;


 char* CODE940_FILE ;
 int JOB940_INITALL ;
 int PBTN_MBACK ;
 int PBTN_MOK ;
 TYPE_6__ Pico ;
 int YM2612Init_ (int,int) ;
 int add_job_940 (int ) ;
 scalar_t__ crashed_940 ;
 int emu_make_path (char*,char*,int) ;
 int exit (int) ;
 int fclose (int *) ;
 int * fopen (char*,char*) ;
 int fread (unsigned char*,int,int,int *) ;
 TYPE_2__* g_screen_ptr ;
 int gp2x_video_flip2 () ;
 int in_menu_wait (int,int *,int) ;
 int internal_reset () ;
 int * loaded_mp3 ;
 int memcpy (scalar_t__,unsigned char*,int) ;
 int* memregl ;
 int* memregs ;
 int memset (TYPE_2__*,int ,int) ;
 int pause940 (int) ;
 int printf (char*,...) ;
 int reset940 (int,int) ;
 TYPE_2__* shared_ctl ;
 TYPE_2__* shared_data ;
 scalar_t__ shared_mem ;
 int text_out16 (int,int,char*) ;

void YM2612Init_940(int baseclock, int rate)
{
 static int oldrate;


 if (Pico.m.frame_count > 0 && !crashed_940 && rate == oldrate)
  return;

 printf("YM2612Init_940()\n");
 printf("Mem usage: shared_data: %i, shared_ctl: %i\n", sizeof(*shared_data), sizeof(*shared_ctl));

 reset940(1, 2);
 pause940(1);

 memregs[0x3B40>>1] = 0;
 memregs[0x3B42>>1] = 1;

 memregl[0x4504>>2] = 0;
 memregl[0x4508>>2] = ~(1<<26);


 if (crashed_940)
 {
  unsigned char ucData[1024];
  int nRead, nLen = 0;
  char binpath[512];
  FILE *fp;

  emu_make_path(binpath, CODE940_FILE, sizeof(binpath));
  fp = fopen(binpath, "rb");
  if(!fp)
  {
   memset(g_screen_ptr, 0, 320*240*2);
   text_out16(10, 100, "failed to open required file:");
   text_out16(10, 110, CODE940_FILE);
   gp2x_video_flip2();
   in_menu_wait(PBTN_MOK|PBTN_MBACK, ((void*)0), 100);
   printf("failed to open %s\n", binpath);
   exit(1);
  }

  while(1)
  {
   nRead = fread(ucData, 1, 1024, fp);
   if(nRead <= 0)
    break;
   memcpy(shared_mem + nLen, ucData, nRead);
   nLen += nRead;
  }
  fclose(fp);
  crashed_940 = 0;
 }

 memset(shared_data, 0, sizeof(*shared_data));
 memset(shared_ctl, 0, sizeof(*shared_ctl));


 YM2612Init_(baseclock, rate);

 internal_reset();

 loaded_mp3 = ((void*)0);

 memregs[0x3B46>>1] = 0xffff;
 memregl[0x4500>>2] = 0xffffffff;
 memregl[0x4510>>2] = 0xffffffff;


 reset940(0, 2);
 pause940(0);




 shared_ctl->baseclock = baseclock;
 shared_ctl->rate = rate;
 add_job_940(JOB940_INITALL);

 oldrate = rate;
}
