#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  gchar ;
struct TYPE_2__ {int cdcoretype; scalar_t__ sndcoretype; void* biospath; } ;

/* Variables and functions */
 int /*<<< orphan*/  DEBUG_STDERR ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  G_FILE_TEST_EXISTS ; 
 int /*<<< orphan*/  G_KEY_FILE_NONE ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,unsigned int) ; 
 int /*<<< orphan*/  TRUE ; 
 int /*<<< orphan*/  YTSDIR ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 () ; 
 void* biospath ; 
 void* cdpath ; 
 int /*<<< orphan*/ * FUNC8 (int /*<<< orphan*/ ,char*,char*,...) ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ **,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ ,int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 () ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC19 (void*,char*,int) ; 
 int /*<<< orphan*/  FUNC20 (int*,char***) ; 
 int /*<<< orphan*/  FUNC21 (int*,char***) ; 
 int /*<<< orphan*/  FUNC22 () ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * inifile ; 
 int /*<<< orphan*/  keyfile ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC25 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC26 (char*) ; 
 int FUNC27 (char*,char*,...) ; 
 scalar_t__ FUNC28 (char*,char*) ; 
 int FUNC29 (char*) ; 
 scalar_t__ FUNC30 (char*,char*) ; 
 TYPE_1__ yinit ; 
 int /*<<< orphan*/  yui ; 
 int /*<<< orphan*/  FUNC31 () ; 
 int /*<<< orphan*/  FUNC32 () ; 
 int /*<<< orphan*/  FUNC33 () ; 
 int /*<<< orphan*/  FUNC34 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC35 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC36 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC37 (int /*<<< orphan*/ ) ; 

int FUNC38(int argc, char *argv[]) {
#ifndef NO_CLI
	int i;
	int autostart = 0;
#endif
	FUNC2();
	FUNC1( DEBUG_STDERR, NULL );
	inifile = FUNC8(FUNC13(), "yabause", "gtk", "yabause.ini", NULL);

	if (! FUNC11(inifile, G_FILE_TEST_EXISTS)) {
		// no inifile found, but it could be in the old location
		gchar * oldinifile = FUNC8(FUNC13(), "yabause.ini", NULL);

		// we need to create the directory for the new file anyways
		gchar * xdgpath = FUNC8(FUNC13(), "yabause", "gtk", NULL);

		if (! FUNC11(xdgpath, G_FILE_TEST_EXISTS))
			FUNC18(xdgpath, 0755);
		FUNC12(xdgpath);

		if (FUNC11(oldinifile, G_FILE_TEST_EXISTS)) {
			// ok, we found an old .ini file, let's copy the content
			gchar * data;

			FUNC9(oldinifile, &data, NULL, NULL);
			FUNC10(inifile, data, -1, NULL);
		}

		FUNC12(oldinifile);
	}
	
	keyfile = FUNC17();

	FUNC21(&argc, &argv);
#ifdef HAVE_LIBGTKGLEXT
	gtk_gl_init(&argc, &argv);
#endif

	FUNC32();

#ifdef HAVE_LIBMINI18N
	mini18n_set_domain(YTSDIR);
	g_key_file_load_from_file(keyfile, inifile, G_KEY_FILE_NONE, 0);
	mini18n_set_locale(g_key_file_get_value(keyfile, "General", "TranslationPath", NULL));
#endif

	yui = FUNC31();

	FUNC33();

	FUNC23(FUNC0(yui), FUNC14(keyfile, "Gtk", "X", 0), FUNC14(keyfile, "Gtk", "Y", 0));

#ifndef NO_CLI
   //handle command line arguments
   for (i = 1; i < argc; ++i) {
      if (argv[i]) {
         //show usage
         if (0 == FUNC28(argv[i], "-h") || 0 == FUNC28(argv[i], "-?") || 0 == FUNC28(argv[i], "--help")) {
            FUNC26(argv[0]);
            return 0;
         }
			
         //set bios
         if (0 == FUNC28(argv[i], "-b") && argv[i + 1]) {
            FUNC19(biospath, argv[i + 1], 256);
            yinit.biospath = biospath;
	 } else if (FUNC30(argv[i], "--bios=")) {
            FUNC19(biospath, argv[i] + FUNC29("--bios="), 256);
            yinit.biospath = biospath;
	 }
         //set iso
         else if (0 == FUNC28(argv[i], "-i") && argv[i + 1]) {
            FUNC19(cdpath, argv[i + 1], 256);
	    yinit.cdcoretype = 1;
	 } else if (FUNC30(argv[i], "--iso=")) {
            FUNC19(cdpath, argv[i] + FUNC29("--iso="), 256);
	    yinit.cdcoretype = 1;
	 }
         //set cdrom
	 else if (0 == FUNC28(argv[i], "-c") && argv[i + 1]) {
            FUNC19(cdpath, argv[i + 1], 256);
	    yinit.cdcoretype = 2;
	 } else if (FUNC30(argv[i], "--cdrom=")) {
            FUNC19(cdpath, argv[i] + FUNC29("--cdrom="), 256);
	    yinit.cdcoretype = 2;
	 }
         // Set sound
         else if (FUNC28(argv[i], "-ns") == 0 || FUNC28(argv[i], "--nosound") == 0) {
	    yinit.sndcoretype = 0;
	 }
	 // Autoload
	 else if (FUNC28(argv[i], "--autoload") == 0) {
            FUNC37(FUNC5(yui));
            FUNC7();
            autostart = 1;
	 }
	 // Autostart
	 else if (FUNC28(argv[i], "-a") == 0 || FUNC28(argv[i], "--autostart") == 0) {
            autostart = 1;
	 }
	 // Fullscreen
	 else if (FUNC28(argv[i], "-f") == 0 || FUNC28(argv[i], "--fullscreen") == 0) {
            FUNC36(FUNC5(yui), TRUE);
	 }
         // Auto frame skip
         else if (FUNC30(argv[i], "--autoframeskip=")) {
            int fscount;
            int fsenable;
            fscount = FUNC27(argv[i] + FUNC29("--autoframeskip="), "%d", &fsenable);
            if (fscount > 0)
               FUNC35(FUNC5(yui), fsenable);
         }
	 // Binary
	 else if (FUNC30(argv[i], "--binary=")) {
	    char binname[1024];
	    unsigned int binaddress;
	    int bincount;

	    bincount = FUNC27(argv[i] + FUNC29("--binary="), "%[^:]:%x", binname, &binaddress);
	    if (bincount > 0) {
	       if (bincount < 2) binaddress = 0x06004000;

               FUNC34(FUNC5(yui));
	       FUNC4(binname, binaddress);
	    }
	 }
      }
   }

   if (autostart) FUNC34(FUNC5(yui));
#endif

	FUNC22 ();

	FUNC6();
	FUNC3();

	return 0;
}