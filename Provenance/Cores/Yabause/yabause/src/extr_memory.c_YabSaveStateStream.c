
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_8__ TYPE_4__ ;
typedef struct TYPE_7__ TYPE_3__ ;
typedef struct TYPE_6__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int outputwidth ;
typedef int outputheight ;
typedef int movieposition ;
typedef int i ;
struct TYPE_8__ {int (* GetGlSize ) (int*,int*) ;} ;
struct TYPE_7__ {int DecilineStop; scalar_t__ CurSH2FreqType; int UsecFrac; int IsPal; int MaxLineCount; int VBlankLineCount; int LineCount; int DecilineCount; } ;
struct TYPE_6__ {scalar_t__ size; scalar_t__ done; } ;
typedef TYPE_1__ IOCheck_struct ;
typedef int FILE ;


 scalar_t__ BupRam ;
 scalar_t__ CLKTYPE_26MHZ ;
 scalar_t__ CartSaveState (int *) ;
 scalar_t__ Cs2SaveState (int *) ;
 int GL_BACK ;
 int GL_RGBA ;
 int GL_UNSIGNED_BYTE ;
 scalar_t__ HighWram ;
 scalar_t__ LowWram ;
 int MSH2 ;
 int OSDMSG_STATUS ;
 int OSDPushMessage (int ,int,char*) ;
 int SEEK_SET ;
 scalar_t__ SH2SaveState (int ,int *) ;
 int SSH2 ;
 int SaveMovieInState (int *,TYPE_1__) ;
 scalar_t__ ScuSaveState (int *) ;
 scalar_t__ SmpcSaveState (int *) ;
 scalar_t__ SoundSaveState (int *) ;
 scalar_t__ StateFinishHeader (int *,int) ;
 int StateWriteHeader (int *,char*,int) ;
 TYPE_4__* VIDCore ;
 scalar_t__ Vdp1SaveState (int *) ;
 scalar_t__ Vdp2SaveState (int *) ;
 int YABSYS_TIMING_BITS ;
 int YuiSwapBuffers () ;
 int fprintf (int *,char*) ;
 int fputc (int,int *) ;
 int framecounter ;
 int free (int *) ;
 int fseek (int *,int,int ) ;
 int ftell (int *) ;
 int glPixelZoom (int,int) ;
 int glReadBuffer (int ) ;
 int glReadPixels (int ,int ,int,int,int ,int ,int *) ;
 scalar_t__ malloc (int) ;
 int stub1 (int*,int*) ;
 TYPE_3__ yabsys ;
 int ywrite (TYPE_1__*,void*,int,int,int *) ;

int YabSaveStateStream(FILE *fp)
{
   u32 i;
   int offset;
   IOCheck_struct check;
   u8 *buf;
   int totalsize;
   int outputwidth;
   int outputheight;
   int movieposition;
   int temp;
   u32 temp32;

   check.done = 0;
   check.size = 0;


   fprintf(fp, "YSS");





   fputc(0x01, fp);



   i = 2;
   ywrite(&check, (void *)&i, sizeof(i), 1, fp);


   i = 0;
   ywrite(&check, (void *)&i, sizeof(i), 1, fp);


   ywrite(&check, (void *)&framecounter, 4, 1, fp);


   ywrite(&check, (void *)&framecounter, 4, 1, fp);


   i += CartSaveState(fp);
   i += Cs2SaveState(fp);
   i += SH2SaveState(MSH2, fp);
   i += SH2SaveState(SSH2, fp);
   i += SoundSaveState(fp);
   i += ScuSaveState(fp);
   i += SmpcSaveState(fp);
   i += Vdp1SaveState(fp);
   i += Vdp2SaveState(fp);

   offset = StateWriteHeader(fp, "OTHR", 1);


   ywrite(&check, (void *)BupRam, 0x10000, 1, fp);
   ywrite(&check, (void *)HighWram, 0x100000, 1, fp);
   ywrite(&check, (void *)LowWram, 0x100000, 1, fp);

   ywrite(&check, (void *)&yabsys.DecilineCount, sizeof(int), 1, fp);
   ywrite(&check, (void *)&yabsys.LineCount, sizeof(int), 1, fp);
   ywrite(&check, (void *)&yabsys.VBlankLineCount, sizeof(int), 1, fp);
   ywrite(&check, (void *)&yabsys.MaxLineCount, sizeof(int), 1, fp);
   temp = yabsys.DecilineStop >> YABSYS_TIMING_BITS;
   ywrite(&check, (void *)&temp, sizeof(int), 1, fp);
   temp = (yabsys.CurSH2FreqType == CLKTYPE_26MHZ) ? 268 : 286;
   ywrite(&check, (void *)&temp, sizeof(int), 1, fp);
   temp32 = (yabsys.UsecFrac * temp / 10) >> YABSYS_TIMING_BITS;
   ywrite(&check, (void *)&temp32, sizeof(u32), 1, fp);
   ywrite(&check, (void *)&yabsys.CurSH2FreqType, sizeof(int), 1, fp);
   ywrite(&check, (void *)&yabsys.IsPal, sizeof(int), 1, fp);

   VIDCore->GetGlSize(&outputwidth, &outputheight);

   totalsize=outputwidth * outputheight * sizeof(u32);

   if ((buf = (u8 *)malloc(totalsize)) == ((void*)0))
   {
      return -2;
   }

   YuiSwapBuffers();





   YuiSwapBuffers();

   ywrite(&check, (void *)&outputwidth, sizeof(outputwidth), 1, fp);
   ywrite(&check, (void *)&outputheight, sizeof(outputheight), 1, fp);

   ywrite(&check, (void *)buf, totalsize, 1, fp);

   movieposition=ftell(fp);

   SaveMovieInState(fp, check);

   i += StateFinishHeader(fp, offset);


   fseek(fp, 8, SEEK_SET);
   ywrite(&check, (void *)&i, sizeof(i), 1, fp);
   fseek(fp, 16, SEEK_SET);
   ywrite(&check, (void *)&movieposition, sizeof(movieposition), 1, fp);

   free(buf);

   OSDPushMessage(OSDMSG_STATUS, 150, "STATE SAVED");

   return 0;
}
