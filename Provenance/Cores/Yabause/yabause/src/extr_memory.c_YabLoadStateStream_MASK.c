#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_7__   TYPE_4__ ;
typedef  struct TYPE_6__   TYPE_3__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
typedef  int u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  outputwidth ;
typedef  int /*<<< orphan*/  outputheight ;
struct TYPE_7__ {scalar_t__ id; int /*<<< orphan*/  (* GetGlSize ) (int*,int*) ;} ;
struct TYPE_6__ {int UsecFrac; int /*<<< orphan*/  CurSH2FreqType; int /*<<< orphan*/  IsPal; int /*<<< orphan*/  MaxLineCount; int /*<<< orphan*/  VBlankLineCount; int /*<<< orphan*/  LineCount; int /*<<< orphan*/  DecilineCount; } ;
struct TYPE_5__ {int /*<<< orphan*/  size; scalar_t__ done; } ;
typedef  TYPE_1__ IOCheck_struct ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ BupRam ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  GL_RGBA ; 
 int /*<<< orphan*/  GL_UNSIGNED_BYTE ; 
 scalar_t__ HighWram ; 
 scalar_t__ LowWram ; 
 int /*<<< orphan*/  MSH2 ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  OSDMSG_STATUS ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  SCSP_MUTE_SYSTEM ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  SSH2 ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int,int) ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *,char*,int*,int*) ; 
 scalar_t__ VIDCORE_OGL ; 
 scalar_t__ VIDCORE_SOFT ; 
 TYPE_4__* VIDCore ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int,int) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int,int) ; 
 int YABSYS_TIMING_BITS ; 
 int /*<<< orphan*/  YAB_ERR_OTHER ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ ,void*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  framecounter ; 
 int /*<<< orphan*/  FUNC16 (int*) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC18 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC19 (int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int*) ; 
 int /*<<< orphan*/  FUNC20 (float,float) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,int) ; 
 scalar_t__ FUNC22 (int) ; 
 scalar_t__ FUNC23 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC24 (int*,int*) ; 
 TYPE_3__ yabsys ; 
 int /*<<< orphan*/  FUNC25 (TYPE_1__*,void*,int,int,int /*<<< orphan*/ *) ; 

int FUNC26(FILE *fp)
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

   // Read signature
   FUNC25(&check, (void *)id, 1, 3, fp);

   if (FUNC23(id, "YSS", 3) != 0)
   {
      return -2;
   }

   // Read header
   FUNC25(&check, (void *)&endian, 1, 1, fp);
   FUNC25(&check, (void *)&headerversion, 4, 1, fp);
   FUNC25(&check, (void *)&size, 4, 1, fp);
   switch(headerversion)
   {
      case 1:
         /* This is the "original" version of the format */
         break;
      case 2:
         /* version 2 adds video recording */
         FUNC25(&check, (void *)&framecounter, 4, 1, fp);
		 movieposition=FUNC18(fp);
		 FUNC25(&check, (void *)&movieposition, 4, 1, fp);
         headersize = 0x14;
         break;
      default:
         /* we're trying to open a save state using a future version
          * of the YSS format, that won't work, sorry :) */
         return -3;
         break;
   }

#ifdef WORDS_BIGENDIAN
   test_endian = endian == 1;
#else
   test_endian = endian == 0;
#endif
   if (test_endian)
   {
      // should setup reading so it's byte-swapped
      FUNC13(YAB_ERR_OTHER, (void *)"Load State byteswapping not supported");
      return -3;
   }

   // Make sure size variable matches actual size minus header
   FUNC17(fp, 0, SEEK_END);

   if (size != (FUNC18(fp) - headersize))
   {
      return -2;
   }
   FUNC17(fp, headersize, SEEK_SET);

   // Verify version here

   FUNC5(SCSP_MUTE_SYSTEM);

   if (FUNC10(fp, "CART", &version, &chunksize) != 0)
   {
      // Revert back to old state here
      FUNC6(SCSP_MUTE_SYSTEM);
      return -3;
   }
   FUNC0(fp, version, chunksize);

   if (FUNC10(fp, "CS2 ", &version, &chunksize) != 0)
   {
      // Revert back to old state here
      FUNC6(SCSP_MUTE_SYSTEM);
      return -3;
   }
   FUNC1(fp, version, chunksize);

   if (FUNC10(fp, "MSH2", &version, &chunksize) != 0)
   {
      // Revert back to old state here
      FUNC6(SCSP_MUTE_SYSTEM);
      return -3;
   }
   FUNC4(MSH2, fp, version, chunksize);

   if (FUNC10(fp, "SSH2", &version, &chunksize) != 0)
   {
      // Revert back to old state here
      FUNC6(SCSP_MUTE_SYSTEM);
      return -3;
   }
   FUNC4(SSH2, fp, version, chunksize);

   if (FUNC10(fp, "SCSP", &version, &chunksize) != 0)
   {
      // Revert back to old state here
      FUNC6(SCSP_MUTE_SYSTEM);
      return -3;
   }
   FUNC9(fp, version, chunksize);

   if (FUNC10(fp, "SCU ", &version, &chunksize) != 0)
   {
      // Revert back to old state here
      FUNC6(SCSP_MUTE_SYSTEM);
      return -3;
   }
   FUNC7(fp, version, chunksize);

   if (FUNC10(fp, "SMPC", &version, &chunksize) != 0)
   {
      // Revert back to old state here
      FUNC6(SCSP_MUTE_SYSTEM);
      return -3;
   }
   FUNC8(fp, version, chunksize);

   if (FUNC10(fp, "VDP1", &version, &chunksize) != 0)
   {
      // Revert back to old state here
      FUNC6(SCSP_MUTE_SYSTEM);
      return -3;
   }
   FUNC11(fp, version, chunksize);

   if (FUNC10(fp, "VDP2", &version, &chunksize) != 0)
   {
      // Revert back to old state here
      FUNC6(SCSP_MUTE_SYSTEM);
      return -3;
   }
   FUNC12(fp, version, chunksize);

   if (FUNC10(fp, "OTHR", &version, &chunksize) != 0)
   {
      // Revert back to old state here
      FUNC6(SCSP_MUTE_SYSTEM);
      return -3;
   }
   // Other data
   FUNC25(&check, (void *)BupRam, 0x10000, 1, fp);
   FUNC25(&check, (void *)HighWram, 0x100000, 1, fp);
   FUNC25(&check, (void *)LowWram, 0x100000, 1, fp);

   FUNC25(&check, (void *)&yabsys.DecilineCount, sizeof(int), 1, fp);
   FUNC25(&check, (void *)&yabsys.LineCount, sizeof(int), 1, fp);
   FUNC25(&check, (void *)&yabsys.VBlankLineCount, sizeof(int), 1, fp);
   FUNC25(&check, (void *)&yabsys.MaxLineCount, sizeof(int), 1, fp);
   FUNC25(&check, (void *)&temp, sizeof(int), 1, fp);
   FUNC25(&check, (void *)&temp, sizeof(int), 1, fp);
   FUNC25(&check, (void *)&temp32, sizeof(u32), 1, fp);
   FUNC25(&check, (void *)&yabsys.CurSH2FreqType, sizeof(int), 1, fp);
   FUNC25(&check, (void *)&yabsys.IsPal, sizeof(int), 1, fp);
   FUNC14(yabsys.CurSH2FreqType);
   yabsys.UsecFrac = (temp32 << YABSYS_TIMING_BITS) * temp / 10;

   if (headerversion > 1) {

   FUNC25(&check, (void *)&outputwidth, sizeof(outputwidth), 1, fp);
   FUNC25(&check, (void *)&outputheight, sizeof(outputheight), 1, fp);

   totalsize=outputwidth * outputheight * sizeof(u32);

   if ((buf = (u8 *)FUNC22(totalsize)) == NULL)
   {
      return -2;
   }

   FUNC25(&check, (void *)buf, totalsize, 1, fp);

   FUNC15();

   #if defined(USE_OPENGL) && !defined(_OGLES3_)
   if(VIDCore->id == VIDCORE_SOFT)
     glRasterPos2i(0, outputheight);
   if(VIDCore->id == VIDCORE_OGL)
	 glRasterPos2i(0, outputheight/2);
   #endif

   VIDCore->GetGlSize(&curroutputwidth, &curroutputheight);
   #if defined(USE_OPENGL) && !defined(_OGLES3_)
   glPixelZoom((float)curroutputwidth / (float)outputwidth, ((float)curroutputheight / (float)outputheight));
   glDrawPixels(outputwidth, outputheight, GL_RGBA, GL_UNSIGNED_BYTE, buf);
   #endif
   FUNC15();
   FUNC16(buf);

   FUNC17(fp, movieposition, SEEK_SET);
   FUNC2(fp);
   }

   FUNC6(SCSP_MUTE_SYSTEM);

   FUNC3(OSDMSG_STATUS, 150, "STATE LOADED");

   return 0;
}