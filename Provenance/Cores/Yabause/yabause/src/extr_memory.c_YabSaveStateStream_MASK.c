#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_8__   TYPE_4__ ;
typedef  struct TYPE_7__   TYPE_3__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  u8 ;
typedef  int u32 ;
typedef  int /*<<< orphan*/  outputwidth ;
typedef  int /*<<< orphan*/  outputheight ;
typedef  int /*<<< orphan*/  movieposition ;
typedef  int /*<<< orphan*/  i ;
struct TYPE_8__ {int /*<<< orphan*/  (* GetGlSize ) (int*,int*) ;} ;
struct TYPE_7__ {int DecilineStop; scalar_t__ CurSH2FreqType; int UsecFrac; int /*<<< orphan*/  IsPal; int /*<<< orphan*/  MaxLineCount; int /*<<< orphan*/  VBlankLineCount; int /*<<< orphan*/  LineCount; int /*<<< orphan*/  DecilineCount; } ;
struct TYPE_6__ {scalar_t__ size; scalar_t__ done; } ;
typedef  TYPE_1__ IOCheck_struct ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 scalar_t__ BupRam ; 
 scalar_t__ CLKTYPE_26MHZ ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  GL_BACK ; 
 int /*<<< orphan*/  GL_RGBA ; 
 int /*<<< orphan*/  GL_UNSIGNED_BYTE ; 
 scalar_t__ HighWram ; 
 scalar_t__ LowWram ; 
 int /*<<< orphan*/  MSH2 ; 
 int /*<<< orphan*/  OSDMSG_STATUS ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int,char*) ; 
 int /*<<< orphan*/  SEEK_SET ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  SSH2 ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,TYPE_1__) ; 
 scalar_t__ FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int) ; 
 int FUNC9 (int /*<<< orphan*/ *,char*,int) ; 
 TYPE_4__* VIDCore ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *) ; 
 int YABSYS_TIMING_BITS ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC14 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  framecounter ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC18 (int,int) ; 
 int /*<<< orphan*/  FUNC19 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC20 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int,int,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC21 (int) ; 
 int /*<<< orphan*/  FUNC22 (int*,int*) ; 
 TYPE_3__ yabsys ; 
 int /*<<< orphan*/  FUNC23 (TYPE_1__*,void*,int,int,int /*<<< orphan*/ *) ; 

int FUNC24(FILE *fp)
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

   // Write signature
   FUNC13(fp, "YSS");

   // Write endianness byte
#ifdef WORDS_BIGENDIAN
   fputc(0x00, fp);
#else
   FUNC14(0x01, fp);
#endif

   // Write version(fix me)
   i = 2;
   FUNC23(&check, (void *)&i, sizeof(i), 1, fp);

   // Skip the next 4 bytes for now
   i = 0;
   FUNC23(&check, (void *)&i, sizeof(i), 1, fp);

   //write frame number
   FUNC23(&check, (void *)&framecounter, 4, 1, fp);

   //this will be updated with the movie position later
   FUNC23(&check, (void *)&framecounter, 4, 1, fp);

   // Go through each area and write each state
   i += FUNC0(fp);
   i += FUNC1(fp);
   i += FUNC3(MSH2, fp);
   i += FUNC3(SSH2, fp);
   i += FUNC7(fp);
   i += FUNC5(fp);
   i += FUNC6(fp);
   i += FUNC10(fp);
   i += FUNC11(fp);

   offset = FUNC9(fp, "OTHR", 1);

   // Other data
   FUNC23(&check, (void *)BupRam, 0x10000, 1, fp); // do we really want to save this?
   FUNC23(&check, (void *)HighWram, 0x100000, 1, fp);
   FUNC23(&check, (void *)LowWram, 0x100000, 1, fp);

   FUNC23(&check, (void *)&yabsys.DecilineCount, sizeof(int), 1, fp);
   FUNC23(&check, (void *)&yabsys.LineCount, sizeof(int), 1, fp);
   FUNC23(&check, (void *)&yabsys.VBlankLineCount, sizeof(int), 1, fp);
   FUNC23(&check, (void *)&yabsys.MaxLineCount, sizeof(int), 1, fp);
   temp = yabsys.DecilineStop >> YABSYS_TIMING_BITS;
   FUNC23(&check, (void *)&temp, sizeof(int), 1, fp);
   temp = (yabsys.CurSH2FreqType == CLKTYPE_26MHZ) ? 268 : 286;
   FUNC23(&check, (void *)&temp, sizeof(int), 1, fp);
   temp32 = (yabsys.UsecFrac * temp / 10) >> YABSYS_TIMING_BITS;
   FUNC23(&check, (void *)&temp32, sizeof(u32), 1, fp);
   FUNC23(&check, (void *)&yabsys.CurSH2FreqType, sizeof(int), 1, fp);
   FUNC23(&check, (void *)&yabsys.IsPal, sizeof(int), 1, fp);

   VIDCore->GetGlSize(&outputwidth, &outputheight);

   totalsize=outputwidth * outputheight * sizeof(u32);

   if ((buf = (u8 *)FUNC21(totalsize)) == NULL)
   {
      return -2;
   }

   FUNC12();
   #if defined(USE_OPENGL) && !defined(_OGLES3_)
   glPixelZoom(1,1);
   glReadBuffer(GL_BACK);
   glReadPixels(0, 0, outputwidth, outputheight, GL_RGBA, GL_UNSIGNED_BYTE, buf);
   #endif
   FUNC12();

   FUNC23(&check, (void *)&outputwidth, sizeof(outputwidth), 1, fp);
   FUNC23(&check, (void *)&outputheight, sizeof(outputheight), 1, fp);

   FUNC23(&check, (void *)buf, totalsize, 1, fp);

   movieposition=FUNC17(fp);
   //write the movie to the end of the savestate
   FUNC4(fp, check);

   i += FUNC8(fp, offset);

   // Go back and update size
   FUNC16(fp, 8, SEEK_SET);
   FUNC23(&check, (void *)&i, sizeof(i), 1, fp);
   FUNC16(fp, 16, SEEK_SET);
   FUNC23(&check, (void *)&movieposition, sizeof(movieposition), 1, fp);

   FUNC15(buf);

   FUNC2(OSDMSG_STATUS, 150, "STATE SAVED");

   return 0;
}