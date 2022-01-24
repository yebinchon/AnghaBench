#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_4__ ;
typedef  struct TYPE_8__   TYPE_3__ ;
typedef  struct TYPE_7__   TYPE_2__ ;
typedef  struct TYPE_6__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  cinematics_t ;
struct TYPE_9__ {size_t currentHandle; scalar_t__* file; } ;
struct TYPE_8__ {scalar_t__ ROQSize; int holdAtEnd; int alterGameState; int playonwalls; int silent; int shader; int /*<<< orphan*/  status; int /*<<< orphan*/  iFile; int /*<<< orphan*/  CIN_WIDTH; int /*<<< orphan*/  CIN_HEIGHT; scalar_t__* fileName; } ;
struct TYPE_7__ {int integer; } ;
struct TYPE_6__ {int /*<<< orphan*/  state; } ;

/* Variables and functions */
 int /*<<< orphan*/  CA_CINEMATIC ; 
 size_t FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (size_t,int,int,int,int) ; 
 int /*<<< orphan*/  FUNC2 (size_t,int) ; 
 int CIN_hold ; 
 int CIN_loop ; 
 int CIN_shader ; 
 int CIN_silent ; 
 int CIN_system ; 
 int /*<<< orphan*/  FUNC3 (char*,...) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_4__*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC5 (char*,int,char*,char const*) ; 
 int /*<<< orphan*/  FUNC6 () ; 
 int /*<<< orphan*/  DEFAULT_CIN_HEIGHT ; 
 int /*<<< orphan*/  DEFAULT_CIN_WIDTH ; 
 int /*<<< orphan*/  FMV_PLAY ; 
 scalar_t__ FUNC7 (scalar_t__*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC8 (scalar_t__*,int,int /*<<< orphan*/ ) ; 
 int MAX_OSPATH ; 
 int MAX_VIDEO_HANDLES ; 
 int /*<<< orphan*/  FUNC9 () ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  UIMENU_NONE ; 
 int /*<<< orphan*/  UI_SET_ACTIVE_MENU ; 
 int /*<<< orphan*/  FUNC12 (scalar_t__,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_4__ cin ; 
 TYPE_3__* cinTable ; 
 TYPE_2__* cl_inGameVideo ; 
 TYPE_1__ cls ; 
 size_t currentHandle ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  qtrue ; 
 int /*<<< orphan*/  s_rawend ; 
 int /*<<< orphan*/  s_soundtime ; 
 int /*<<< orphan*/  FUNC14 (scalar_t__*,char*) ; 
 int /*<<< orphan*/  FUNC15 (scalar_t__*,char*) ; 
 int /*<<< orphan*/ * FUNC16 (char const*,char*) ; 
 scalar_t__ uivm ; 

int FUNC17( const char *arg, int x, int y, int w, int h, int systemBits ) {
	unsigned short RoQID;
	char	name[MAX_OSPATH];
	int		i;

	if (FUNC16(arg, "/") == NULL && FUNC16(arg, "\\") == NULL) {
		FUNC5 (name, sizeof(name), "video/%s", arg);
	} else {
		FUNC5 (name, sizeof(name), "%s", arg);
	}

	if (!(systemBits & CIN_system)) {
		for ( i = 0 ; i < MAX_VIDEO_HANDLES ; i++ ) {
			if (!FUNC14(cinTable[i].fileName, name) ) {
				return i;
			}
		}
	}

	FUNC3("SCR_PlayCinematic( %s )\n", arg);

	FUNC4(&cin, 0, sizeof(cinematics_t) );
	currentHandle = FUNC0();

	cin.currentHandle = currentHandle;

	FUNC15(cinTable[currentHandle].fileName, name);

	cinTable[currentHandle].ROQSize = 0;
	cinTable[currentHandle].ROQSize = FUNC7 (cinTable[currentHandle].fileName, &cinTable[currentHandle].iFile, qtrue);

	if (cinTable[currentHandle].ROQSize<=0) {
		FUNC3("play(%s), ROQSize<=0\n", arg);
		cinTable[currentHandle].fileName[0] = 0;
		return -1;
	}

	FUNC1(currentHandle, x, y, w, h);
	FUNC2(currentHandle, (systemBits & CIN_loop)!=0);

	cinTable[currentHandle].CIN_HEIGHT = DEFAULT_CIN_HEIGHT;
	cinTable[currentHandle].CIN_WIDTH  =  DEFAULT_CIN_WIDTH;
	cinTable[currentHandle].holdAtEnd = (systemBits & CIN_hold) != 0;
	cinTable[currentHandle].alterGameState = (systemBits & CIN_system) != 0;
	cinTable[currentHandle].playonwalls = 1;
	cinTable[currentHandle].silent = (systemBits & CIN_silent) != 0;
	cinTable[currentHandle].shader = (systemBits & CIN_shader) != 0;

	if (cinTable[currentHandle].alterGameState) {
		// close the menu
		if ( uivm ) {
			FUNC12( uivm, UI_SET_ACTIVE_MENU, UIMENU_NONE );
		}
	} else {
		cinTable[currentHandle].playonwalls = cl_inGameVideo->integer;
	}

	FUNC13();
					
	FUNC8 (cin.file, 16, cinTable[currentHandle].iFile);

	RoQID = (unsigned short)(cin.file[0]) + (unsigned short)(cin.file[1])*256;
	if (RoQID == 0x1084)
	{
		FUNC10();
//		FS_Read (cin.file, cinTable[currentHandle].RoQFrameSize+8, cinTable[currentHandle].iFile);
		// let the background thread start reading ahead
		FUNC11( cinTable[currentHandle].iFile, 0x10000 );

		cinTable[currentHandle].status = FMV_PLAY;
		FUNC3("trFMV::play(), playing %s\n", arg);

		if (cinTable[currentHandle].alterGameState) {
			cls.state = CA_CINEMATIC;
		}
		
		FUNC6();

		s_rawend = s_soundtime;

		return currentHandle;
	}
	FUNC3("trFMV::play(), invalid RoQ ID\n");

	FUNC9();
	return -1;
}