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
typedef  int /*<<< orphan*/  cwd ;

/* Variables and functions */
 int FUNC0 () ; 
 int FILENAME_MAX ; 
 int /*<<< orphan*/  MC_TYPE_XMC ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  SCECdINoD ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 () ; 
 int /*<<< orphan*/  FUNC6 () ; 
 scalar_t__ FUNC7 () ; 
 int /*<<< orphan*/  audsrv_irx ; 
 int /*<<< orphan*/  cdvd_irx ; 
 int /*<<< orphan*/  fileXio_irx ; 
 int /*<<< orphan*/  freemtap_irx ; 
 int /*<<< orphan*/  freepad_irx ; 
 int /*<<< orphan*/  freesd_irx ; 
 int /*<<< orphan*/  freesio2_irx ; 
 int FUNC8 (char*) ; 
 int /*<<< orphan*/  FUNC9 (char*,int) ; 
 int /*<<< orphan*/  iomanX_irx ; 
 scalar_t__ FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  mcman_irx ; 
 int /*<<< orphan*/  mcserv_irx ; 
 int FUNC11 () ; 
 int FUNC12 (int /*<<< orphan*/ ) ; 
 int FUNC13 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC14 (char*,int) ; 
 int /*<<< orphan*/  FUNC15 () ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  size_audsrv_irx ; 
 int /*<<< orphan*/  size_cdvd_irx ; 
 int /*<<< orphan*/  size_fileXio_irx ; 
 int /*<<< orphan*/  size_freemtap_irx ; 
 int /*<<< orphan*/  size_freepad_irx ; 
 int /*<<< orphan*/  size_freesd_irx ; 
 int /*<<< orphan*/  size_freesio2_irx ; 
 int /*<<< orphan*/  size_iomanX_irx ; 
 int /*<<< orphan*/  size_mcman_irx ; 
 int /*<<< orphan*/  size_mcserv_irx ; 
 int /*<<< orphan*/  size_usbd_irx ; 
 int /*<<< orphan*/  size_usbhdfsd_irx ; 
 int /*<<< orphan*/  usbd_irx ; 
 int /*<<< orphan*/  usbhdfsd_irx ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int) ; 

__attribute__((used)) static void FUNC19(void *data)
{
   char cwd[FILENAME_MAX];
   int bootDeviceID;

   FUNC3(0);
#if !defined(DEBUG) || defined(BUILD_FOR_PCSX2)
   /* Comment this line if you don't wanna debug the output */
   while(!FUNC4(NULL, 0)){};
#endif

   while(!FUNC5()){};
   FUNC3(0);
   FUNC15();

   /* I/O Files */
   FUNC2(&iomanX_irx, size_iomanX_irx, 0, NULL, NULL);
   FUNC2(&fileXio_irx, size_fileXio_irx, 0, NULL, NULL);
   FUNC2(&freesio2_irx, size_freesio2_irx, 0, NULL, NULL);

   /* Memory Card */
   FUNC2(&mcman_irx, size_mcman_irx, 0, NULL, NULL);
   FUNC2(&mcserv_irx, size_mcserv_irx, 0, NULL, NULL);

   /* Controllers */
   FUNC2(&freemtap_irx, size_freemtap_irx, 0, NULL, NULL);
   FUNC2(&freepad_irx, size_freepad_irx, 0, NULL, NULL);

   /* USB */
   FUNC2(&usbd_irx, size_usbd_irx, 0, NULL, NULL);
   FUNC2(&usbhdfsd_irx, size_usbhdfsd_irx, 0, NULL, NULL);

   /* Audio */
   FUNC2(&freesd_irx, size_freesd_irx, 0, NULL, NULL);
   FUNC2(&audsrv_irx, size_audsrv_irx, 0, NULL, NULL);

   /* CDVD */
   FUNC2(&cdvd_irx, size_cdvd_irx, 0, NULL, NULL);

   if (FUNC10(MC_TYPE_XMC)) {
      FUNC1("mcInit library not initalizated\n");
   }

   /* Initializes audsrv library */
   if (FUNC7()) {
      FUNC1("audsrv library not initalizated\n");
   }

   /* Initializes pad libraries
      Must be init with 0 as parameter*/
   if (FUNC11() != 1) {
      FUNC1("mtapInit library not initalizated\n");
   }
   if (FUNC13(0) != 1) {
      FUNC1("padInit library not initalizated\n");
   }
   if (FUNC12(0) != 1) {
      FUNC1("mtapPortOpen library not initalizated\n");
   }

   /* Initializes CDVD library */
   /* SCECdINoD init without check for a disc. Reduces risk of a lockup if the drive is in a erroneous state. */
   FUNC16(SCECdINoD);
   if (FUNC0() != 1) {
      FUNC1("CDVD_Init library not initalizated\n");
   }

   FUNC6();

   /* Prepare device */
   FUNC9(cwd, sizeof(cwd));
   bootDeviceID=FUNC8(cwd);
   FUNC18(bootDeviceID);

#if defined(HAVE_FILE_LOGGER)
   retro_main_log_file_init("retroarch.log", false);
   verbosity_enable();
#endif
}