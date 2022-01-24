#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_13__   TYPE_7__ ;
typedef  struct TYPE_12__   TYPE_6__ ;
typedef  struct TYPE_11__   TYPE_5__ ;
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int u32 ;
typedef  int time_t ;
struct tm {int tm_hour; int tm_min; int tm_sec; int tm_mday; } ;
typedef  int /*<<< orphan*/  gchar ;
typedef  int /*<<< orphan*/  gboolean ;
struct TYPE_8__ {int /*<<< orphan*/  height; int /*<<< orphan*/  width; } ;
struct TYPE_13__ {TYPE_1__ allocation; } ;
struct TYPE_12__ {char* Name; } ;
struct TYPE_11__ {int /*<<< orphan*/  (* Resize ) (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ;} ;
struct TYPE_10__ {int cdcoretype; int regionid; int carttype; int sh2coretype; int m68kcoretype; int vidcoretype; int osdcoretype; int sndcoretype; int percoretype; int clocksync; long basetime; int usethreads; int videoformattype; int /*<<< orphan*/ * mpegpath; int /*<<< orphan*/ * buppath; int /*<<< orphan*/ * cartpath; int /*<<< orphan*/ * cdpath; int /*<<< orphan*/ * biospath; } ;
struct TYPE_9__ {int state; int /*<<< orphan*/  area; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FALSE ; 
 TYPE_7__* FUNC1 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  G_KEY_FILE_NONE ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 TYPE_6__* PERCore ; 
#define  PERMOUSE 129 
#define  PERPAD 128 
 int /*<<< orphan*/  PORTDATA1 ; 
 int /*<<< orphan*/  FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *) ; 
 char** PerMouseNames ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 char** PerPadNames ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (int) ; 
 int /*<<< orphan*/  FUNC9 (int) ; 
 int /*<<< orphan*/  FUNC10 (int) ; 
 int /*<<< orphan*/  TRUE ; 
 TYPE_5__* VIDCore ; 
 int /*<<< orphan*/  FUNC11 (int) ; 
 int /*<<< orphan*/  FUNC12 (int) ; 
 int YUI_IS_INIT ; 
 TYPE_2__* FUNC13 (int /*<<< orphan*/ ) ; 
 void* biospath ; 
 void* buppath ; 
 void* cartpath ; 
 void* cdpath ; 
 void* FUNC14 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int FUNC15 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ *) ; 
 void* FUNC16 (int /*<<< orphan*/ ,char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC18 (void*,int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  inifile ; 
 int /*<<< orphan*/  keyfile ; 
 int /*<<< orphan*/  FUNC19 (int*,struct tm*) ; 
 void* mpegpath ; 
 int /*<<< orphan*/  padbits ; 
 scalar_t__ FUNC20 (int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC21 (char*,char*,char*) ; 
 int /*<<< orphan*/  FUNC22 (char*,char*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_3__ yinit ; 
 int /*<<< orphan*/  yui ; 
 int /*<<< orphan*/  FUNC24 (int,int,int) ; 
 int /*<<< orphan*/  FUNC25 (TYPE_2__*,int) ; 

__attribute__((used)) static gboolean FUNC26(void) {
	int i, tmp;
	long tmptime;
	gchar * stmp;
	gboolean mustRestart = FALSE;

	FUNC17(keyfile, inifile, G_KEY_FILE_NONE, 0);

	/* bios */
	stmp = FUNC16(keyfile, "General", "BiosPath", 0);
	if (stmp && !*stmp) stmp = NULL;
	if ((FUNC13(yui)->state & YUI_IS_INIT) && FUNC20(stmp, yinit.biospath)) {
		mustRestart = TRUE;
	}
	if (stmp) {
		FUNC18(biospath, stmp, 256);
		yinit.biospath = biospath;
	}
	else yinit.biospath = NULL;

	/* cd core */
	stmp = FUNC16(keyfile, "General", "CDROMDrive", 0);
	if (stmp && !*stmp) stmp = NULL;
	if((FUNC13(yui)->state & YUI_IS_INIT) && FUNC20(stmp, yinit.cdpath)) {
		FUNC0(yinit.cdcoretype, stmp);
	}
	if (stmp) FUNC18(cdpath, stmp, 256);

	tmp = yinit.cdcoretype;
	yinit.cdcoretype = FUNC15(keyfile, "General", "CDROMCore", 0);
	if((FUNC13(yui)->state & YUI_IS_INIT) && (tmp != yinit.cdcoretype)) {
		FUNC0(yinit.cdcoretype, yinit.cdpath);
	}

	/* region */
	{
		char * region = FUNC16(keyfile, "General", "Region", 0);
		tmp = yinit.regionid;
		if ((region == 0) || !FUNC22(region, "Auto")) {
			yinit.regionid = 0;
		} else {
			switch(region[0]) {
				case 'J': yinit.regionid = 1; break;
				case 'T': yinit.regionid = 2; break;
				case 'U': yinit.regionid = 4; break;
				case 'B': yinit.regionid = 5; break;
				case 'K': yinit.regionid = 6; break;
				case 'A': yinit.regionid = 0xA; break;
				case 'E': yinit.regionid = 0xC; break;
				case 'L': yinit.regionid = 0xD; break;
			}
		}

		if ((FUNC13(yui)->state & YUI_IS_INIT) && (tmp != yinit.regionid)) {
			mustRestart = TRUE;
		}
	}

	/* cart */
	stmp = FUNC16(keyfile, "General", "CartPath", 0);
	if (stmp && !*stmp) stmp = NULL;
	if ((FUNC13(yui)->state & YUI_IS_INIT) && FUNC20(stmp, yinit.cartpath)) {
		mustRestart = TRUE;
	}
	if (stmp) {
		FUNC18(cartpath, stmp, 256);
		yinit.cartpath = cartpath;
	}
	else yinit.cartpath = NULL;

	tmp = yinit.carttype;
	yinit.carttype = FUNC15(keyfile, "General", "CartType", 0);
	if ((FUNC13(yui)->state & YUI_IS_INIT) && (tmp != yinit.carttype)) {
          mustRestart = TRUE;
	}

	/* backup ram */
	stmp = FUNC16(keyfile, "General", "BackupRamPath", 0);
	if (stmp && !*stmp) stmp = NULL;
	if ((FUNC13(yui)->state & YUI_IS_INIT) && FUNC20(stmp, yinit.buppath)) {
		mustRestart = TRUE;
	}
	if (stmp) {
		FUNC18(buppath, stmp, 256);
		yinit.buppath = buppath;
	}
	else yinit.buppath = NULL;

	/* mpeg rom */
	stmp = FUNC16(keyfile, "General", "MpegRomPath", 0);
	if (stmp && !*stmp) stmp = NULL;
	if ((FUNC13(yui)->state & YUI_IS_INIT) && FUNC20(stmp, yinit.mpegpath)) {
		mustRestart = TRUE;
	}
	if (stmp) {
		FUNC18(mpegpath, stmp, 256);
		yinit.mpegpath = mpegpath;
	}
	else yinit.mpegpath = NULL;

	/* sh2 */
	tmp = yinit.sh2coretype;
	yinit.sh2coretype = FUNC15(keyfile, "General", "SH2Int", 0);
	if ((FUNC13(yui)->state & YUI_IS_INIT) && (tmp != yinit.sh2coretype)) {
		mustRestart = TRUE;
	}

	/* m68k */
	tmp = yinit.m68kcoretype;
	yinit.m68kcoretype = FUNC15(keyfile, "General", "M68kInt", 0);
	if ((FUNC13(yui)->state & YUI_IS_INIT) && (tmp != yinit.m68kcoretype)) {
		mustRestart = TRUE;
	}

	/* video core */
	tmp = yinit.vidcoretype;
	yinit.vidcoretype = FUNC15(keyfile, "General", "VideoCore", 0);
	if ((FUNC13(yui)->state & YUI_IS_INIT) && (tmp != yinit.vidcoretype)) {
		FUNC12(yinit.vidcoretype);
		VIDCore->Resize(
			FUNC1(FUNC13(yui)->area)->allocation.width,
			FUNC1(FUNC13(yui)->area)->allocation.height,
			FALSE);
	}

	/* osd core */
	tmp = yinit.osdcoretype;
	yinit.osdcoretype = FUNC15(keyfile, "General", "OSDCore", 0);
	if ((FUNC13(yui)->state & YUI_IS_INIT) && (tmp != yinit.osdcoretype)) {
		FUNC2(yinit.osdcoretype);
	}

	/* sound core */
	tmp = yinit.sndcoretype;
	yinit.sndcoretype = FUNC15(keyfile, "General", "SoundCore", 0);
	if ((FUNC13(yui)->state & YUI_IS_INIT) && (tmp != yinit.sndcoretype)) {
		FUNC8(yinit.sndcoretype);
	}

	FUNC10(FUNC15(keyfile, "General", "Volume", NULL));

	/* peripheral core */
	yinit.percoretype = FUNC15(keyfile, "General", "PerCore", 0);

	/* audio sync */
	tmp = FUNC14(keyfile, "General", "AudioSync", 0);
	FUNC9(tmp);

	/* clock sync */
	tmp = yinit.clocksync;
	yinit.clocksync = FUNC14(keyfile, "General", "ClockSync", 0);
	if ((FUNC13(yui)->state & YUI_IS_INIT) && (tmp != yinit.clocksync)) {
		mustRestart = TRUE;
	}
	tmptime = yinit.basetime;
	tmp = FUNC14(keyfile, "General", "FixedBaseTime", 0);
	if (tmp && yinit.clocksync) {
		/* Find timestamp of 1998-01-01 12:00 in the local time zone */
		time_t utc = 883656000;  // 1998-01-01 12:00 UTC
		struct tm tm;
		long local, noon;
		FUNC19(&utc, &tm);
		local = tm.tm_hour*3600 + tm.tm_min*60 + tm.tm_sec;
		if (tm.tm_mday == 2)  // 1998-01-02
			local += 86400;
		else if (tm.tm_mday == 31)  // 1997-12-31
			local -= 86400;
		noon = 12*3600 + 0*60 + 0;
		yinit.basetime = (long)utc + (noon - local);
	} else {
		yinit.basetime = 0;
	}
	if ((FUNC13(yui)->state & YUI_IS_INIT) && (tmptime != yinit.basetime)) {
		mustRestart = TRUE;
	}

	/* threads */
	tmp = FUNC14(keyfile, "General", "UseThreads", 0);
	if ((FUNC13(yui)->state & YUI_IS_INIT) && (tmp != yinit.usethreads)) {
		mustRestart = TRUE;
	}
	yinit.usethreads = tmp;

	FUNC3(yinit.percoretype);

	FUNC6();
	switch(FUNC15(keyfile, "General", "PerType", NULL))
	{
		case PERMOUSE:
			padbits = FUNC4(&PORTDATA1);
			i = 0;

			while(PerMouseNames[i]) {
				char tmp[100];
				u32 key;
				FUNC21(tmp, "Mouse.%s.1", PerMouseNames[i]);
	  			key = FUNC15(keyfile, PERCore->Name, tmp, 0);
		  		FUNC7(key, i + 13, padbits);
		  		i++;
			}
			break;
		case PERPAD:
		default:
			padbits = FUNC5(&PORTDATA1);
			i = 0;

			while(PerPadNames[i]) {
				char tmp[100];
				u32 key;
				FUNC21(tmp, "Pad.%s.1", PerPadNames[i]);
	  			key = FUNC15(keyfile, PERCore->Name, tmp, 0);
		  		FUNC7(key, i, padbits);
		  		i++;
			}
	}

	FUNC24(FUNC15(keyfile, "General", "Width", 0),
			FUNC15(keyfile, "General", "Height", 0),
			FUNC15(keyfile, "General", "Fullscreen", 0));

        yinit.videoformattype = FUNC15(keyfile, "General", "VideoFormat", 0);

	FUNC25(FUNC13(yui), FUNC15(keyfile, "General", "Frameskip", NULL));
	
	FUNC11(FUNC15(keyfile, "General", "Bilinear", 0));

	return mustRestart;
}