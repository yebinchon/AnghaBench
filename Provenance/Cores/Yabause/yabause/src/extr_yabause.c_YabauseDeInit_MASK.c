#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */

/* Variables and functions */
 int /*<<< orphan*/ * BiosRom ; 
 int /*<<< orphan*/ * BupRam ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 () ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/ * HighWram ; 
 int /*<<< orphan*/ * LowWram ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ *,int,int,scalar_t__) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  FUNC12 () ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  YAB_ERR_FILEWRITE ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,void*) ; 
 scalar_t__ bupfilename ; 

void FUNC15(void) {
   FUNC4();

   if (BiosRom)
      FUNC10(BiosRom);
   BiosRom = NULL;

   if (HighWram)
      FUNC10(HighWram);
   HighWram = NULL;

   if (LowWram)
      FUNC10(LowWram);
   LowWram = NULL;

   if (BupRam)
   {
      if (FUNC8(BupRam, 0x10000, 1, bupfilename) != 0)
         FUNC14(YAB_ERR_FILEWRITE, (void *)bupfilename);

      FUNC9(BupRam);
   }
   BupRam = NULL;

   FUNC0();
   FUNC2();
   FUNC6();
   FUNC5();
   FUNC11();
   FUNC12();
   FUNC7();
   FUNC3();
   FUNC13();
   FUNC1();
}