
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_7__ TYPE_4__ ;
typedef struct TYPE_6__ TYPE_3__ ;
typedef struct TYPE_5__ TYPE_1__ ;


typedef int u8 ;
typedef int u32 ;
typedef int outputwidth ;
typedef int outputheight ;
struct TYPE_7__ {scalar_t__ id; int (* GetGlSize ) (int*,int*) ;} ;
struct TYPE_6__ {int UsecFrac; int CurSH2FreqType; int IsPal; int MaxLineCount; int VBlankLineCount; int LineCount; int DecilineCount; } ;
struct TYPE_5__ {int size; scalar_t__ done; } ;
typedef TYPE_1__ IOCheck_struct ;
typedef int FILE ;


 scalar_t__ BupRam ;
 int CartLoadState (int *,int,int) ;
 int Cs2LoadState (int *,int,int) ;
 int GL_RGBA ;
 int GL_UNSIGNED_BYTE ;
 scalar_t__ HighWram ;
 scalar_t__ LowWram ;
 int MSH2 ;
 int MovieReadState (int *) ;
 int OSDMSG_STATUS ;
 int OSDPushMessage (int ,int,char*) ;
 int SCSP_MUTE_SYSTEM ;
 int SEEK_END ;
 int SEEK_SET ;
 int SH2LoadState (int ,int *,int,int) ;
 int SSH2 ;
 int ScspMuteAudio (int ) ;
 int ScspUnMuteAudio (int ) ;
 int ScuLoadState (int *,int,int) ;
 int SmpcLoadState (int *,int,int) ;
 int SoundLoadState (int *,int,int) ;
 scalar_t__ StateCheckRetrieveHeader (int *,char*,int*,int*) ;
 scalar_t__ VIDCORE_OGL ;
 scalar_t__ VIDCORE_SOFT ;
 TYPE_4__* VIDCore ;
 int Vdp1LoadState (int *,int,int) ;
 int Vdp2LoadState (int *,int,int) ;
 int YABSYS_TIMING_BITS ;
 int YAB_ERR_OTHER ;
 int YabSetError (int ,void*) ;
 int YabauseChangeTiming (int ) ;
 int YuiSwapBuffers () ;
 int framecounter ;
 int free (int*) ;
 int fseek (int *,int,int ) ;
 int ftell (int *) ;
 int glDrawPixels (int,int,int ,int ,int*) ;
 int glPixelZoom (float,float) ;
 int glRasterPos2i (int ,int) ;
 scalar_t__ malloc (int) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int stub1 (int*,int*) ;
 TYPE_3__ yabsys ;
 int yread (TYPE_1__*,void*,int,int,int *) ;

int YabLoadStateStream(FILE *fp)
{
   char id[3];
   u8 endian;
   int headerversion, version, size, chunksize, headersize;
   IOCheck_struct check;
   u8* buf;
   int totalsize;
   int outputwidth;
   int outputheight;
   int curroutputwidth;
   int curroutputheight;
   int movieposition;
   int temp;
   u32 temp32;
   int test_endian;

   headersize = 0xC;
   check.done = 0;
   check.size = 0;


   yread(&check, (void *)id, 1, 3, fp);

   if (strncmp(id, "YSS", 3) != 0)
   {
      return -2;
   }


   yread(&check, (void *)&endian, 1, 1, fp);
   yread(&check, (void *)&headerversion, 4, 1, fp);
   yread(&check, (void *)&size, 4, 1, fp);
   switch(headerversion)
   {
      case 1:

         break;
      case 2:

         yread(&check, (void *)&framecounter, 4, 1, fp);
   movieposition=ftell(fp);
   yread(&check, (void *)&movieposition, 4, 1, fp);
         headersize = 0x14;
         break;
      default:


         return -3;
         break;
   }




   test_endian = endian == 0;

   if (test_endian)
   {

      YabSetError(YAB_ERR_OTHER, (void *)"Load State byteswapping not supported");
      return -3;
   }


   fseek(fp, 0, SEEK_END);

   if (size != (ftell(fp) - headersize))
   {
      return -2;
   }
   fseek(fp, headersize, SEEK_SET);



   ScspMuteAudio(SCSP_MUTE_SYSTEM);

   if (StateCheckRetrieveHeader(fp, "CART", &version, &chunksize) != 0)
   {

      ScspUnMuteAudio(SCSP_MUTE_SYSTEM);
      return -3;
   }
   CartLoadState(fp, version, chunksize);

   if (StateCheckRetrieveHeader(fp, "CS2 ", &version, &chunksize) != 0)
   {

      ScspUnMuteAudio(SCSP_MUTE_SYSTEM);
      return -3;
   }
   Cs2LoadState(fp, version, chunksize);

   if (StateCheckRetrieveHeader(fp, "MSH2", &version, &chunksize) != 0)
   {

      ScspUnMuteAudio(SCSP_MUTE_SYSTEM);
      return -3;
   }
   SH2LoadState(MSH2, fp, version, chunksize);

   if (StateCheckRetrieveHeader(fp, "SSH2", &version, &chunksize) != 0)
   {

      ScspUnMuteAudio(SCSP_MUTE_SYSTEM);
      return -3;
   }
   SH2LoadState(SSH2, fp, version, chunksize);

   if (StateCheckRetrieveHeader(fp, "SCSP", &version, &chunksize) != 0)
   {

      ScspUnMuteAudio(SCSP_MUTE_SYSTEM);
      return -3;
   }
   SoundLoadState(fp, version, chunksize);

   if (StateCheckRetrieveHeader(fp, "SCU ", &version, &chunksize) != 0)
   {

      ScspUnMuteAudio(SCSP_MUTE_SYSTEM);
      return -3;
   }
   ScuLoadState(fp, version, chunksize);

   if (StateCheckRetrieveHeader(fp, "SMPC", &version, &chunksize) != 0)
   {

      ScspUnMuteAudio(SCSP_MUTE_SYSTEM);
      return -3;
   }
   SmpcLoadState(fp, version, chunksize);

   if (StateCheckRetrieveHeader(fp, "VDP1", &version, &chunksize) != 0)
   {

      ScspUnMuteAudio(SCSP_MUTE_SYSTEM);
      return -3;
   }
   Vdp1LoadState(fp, version, chunksize);

   if (StateCheckRetrieveHeader(fp, "VDP2", &version, &chunksize) != 0)
   {

      ScspUnMuteAudio(SCSP_MUTE_SYSTEM);
      return -3;
   }
   Vdp2LoadState(fp, version, chunksize);

   if (StateCheckRetrieveHeader(fp, "OTHR", &version, &chunksize) != 0)
   {

      ScspUnMuteAudio(SCSP_MUTE_SYSTEM);
      return -3;
   }

   yread(&check, (void *)BupRam, 0x10000, 1, fp);
   yread(&check, (void *)HighWram, 0x100000, 1, fp);
   yread(&check, (void *)LowWram, 0x100000, 1, fp);

   yread(&check, (void *)&yabsys.DecilineCount, sizeof(int), 1, fp);
   yread(&check, (void *)&yabsys.LineCount, sizeof(int), 1, fp);
   yread(&check, (void *)&yabsys.VBlankLineCount, sizeof(int), 1, fp);
   yread(&check, (void *)&yabsys.MaxLineCount, sizeof(int), 1, fp);
   yread(&check, (void *)&temp, sizeof(int), 1, fp);
   yread(&check, (void *)&temp, sizeof(int), 1, fp);
   yread(&check, (void *)&temp32, sizeof(u32), 1, fp);
   yread(&check, (void *)&yabsys.CurSH2FreqType, sizeof(int), 1, fp);
   yread(&check, (void *)&yabsys.IsPal, sizeof(int), 1, fp);
   YabauseChangeTiming(yabsys.CurSH2FreqType);
   yabsys.UsecFrac = (temp32 << YABSYS_TIMING_BITS) * temp / 10;

   if (headerversion > 1) {

   yread(&check, (void *)&outputwidth, sizeof(outputwidth), 1, fp);
   yread(&check, (void *)&outputheight, sizeof(outputheight), 1, fp);

   totalsize=outputwidth * outputheight * sizeof(u32);

   if ((buf = (u8 *)malloc(totalsize)) == ((void*)0))
   {
      return -2;
   }

   yread(&check, (void *)buf, totalsize, 1, fp);

   YuiSwapBuffers();
   VIDCore->GetGlSize(&curroutputwidth, &curroutputheight);




   YuiSwapBuffers();
   free(buf);

   fseek(fp, movieposition, SEEK_SET);
   MovieReadState(fp);
   }

   ScspUnMuteAudio(SCSP_MUTE_SYSTEM);

   OSDPushMessage(OSDMSG_STATUS, 150, "STATE LOADED");

   return 0;
}
