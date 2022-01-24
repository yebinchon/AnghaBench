#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {int /*<<< orphan*/  DebugPolygonDelete; int /*<<< orphan*/  DebugPolygonCreate; int /*<<< orphan*/  DebugLineShow; int /*<<< orphan*/  DebugLineDelete; int /*<<< orphan*/  DebugLineCreate; int /*<<< orphan*/  FS_Seek; int /*<<< orphan*/  FS_FCloseFile; int /*<<< orphan*/  FS_Write; int /*<<< orphan*/  FS_Read; int /*<<< orphan*/  FS_FOpenFile; int /*<<< orphan*/  HunkAlloc; int /*<<< orphan*/  AvailableMemory; int /*<<< orphan*/  FreeMemory; int /*<<< orphan*/  GetMemory; int /*<<< orphan*/  BotClientCommand; int /*<<< orphan*/  BSPModelMinsMaxsOrigin; int /*<<< orphan*/  BSPEntityData; int /*<<< orphan*/  inPVS; int /*<<< orphan*/  PointContents; int /*<<< orphan*/  EntityTrace; int /*<<< orphan*/  Trace; int /*<<< orphan*/  Print; } ;
typedef  TYPE_1__ botlib_import_t ;
typedef  int /*<<< orphan*/  botlib_export_t ;
typedef  int /*<<< orphan*/  bot_debugpoly_t ;

/* Variables and functions */
 int /*<<< orphan*/  BOTLIB_API_VERSION ; 
 int /*<<< orphan*/  BotClientCommand ; 
 int /*<<< orphan*/  BotImport_BSPEntityData ; 
 int /*<<< orphan*/  BotImport_BSPModelMinsMaxsOrigin ; 
 int /*<<< orphan*/  BotImport_DebugLineCreate ; 
 int /*<<< orphan*/  BotImport_DebugLineDelete ; 
 int /*<<< orphan*/  BotImport_DebugLineShow ; 
 int /*<<< orphan*/  BotImport_DebugPolygonCreate ; 
 int /*<<< orphan*/  BotImport_DebugPolygonDelete ; 
 int /*<<< orphan*/  BotImport_EntityTrace ; 
 int /*<<< orphan*/  BotImport_FreeMemory ; 
 int /*<<< orphan*/  BotImport_GetMemory ; 
 int /*<<< orphan*/  BotImport_HunkAlloc ; 
 int /*<<< orphan*/  BotImport_PointContents ; 
 int /*<<< orphan*/  BotImport_Print ; 
 int /*<<< orphan*/  BotImport_Trace ; 
 int /*<<< orphan*/  BotImport_inPVS ; 
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,char*) ; 
 int FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 
 int /*<<< orphan*/  ERR_NEED_CD ; 
 int /*<<< orphan*/  FS_FCloseFile ; 
 int /*<<< orphan*/  FS_FOpenFileByMode ; 
 int /*<<< orphan*/  FS_Read2 ; 
 int /*<<< orphan*/  FS_Seek ; 
 int /*<<< orphan*/  FS_Write ; 
 scalar_t__ FUNC3 (int /*<<< orphan*/ ,TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC4 () ; 
 int /*<<< orphan*/  Z_AvailableMemory ; 
 int /*<<< orphan*/  FUNC5 (scalar_t__) ; 
 scalar_t__ FUNC6 (int) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int bot_maxdebugpolys ; 
 int /*<<< orphan*/ * botlib_export ; 
 scalar_t__ debugpolygons ; 

void FUNC8(void) {
	botlib_import_t	botlib_import;

	if ( !FUNC2("fs_restrict") && !FUNC4() ) {
		FUNC0( ERR_NEED_CD, "Game CD not in drive" );
	}

	if (debugpolygons) FUNC5(debugpolygons);
	bot_maxdebugpolys = FUNC1("bot_maxdebugpolys");
	debugpolygons = FUNC6(sizeof(bot_debugpoly_t) * bot_maxdebugpolys);

	botlib_import.Print = BotImport_Print;
	botlib_import.Trace = BotImport_Trace;
	botlib_import.EntityTrace = BotImport_EntityTrace;
	botlib_import.PointContents = BotImport_PointContents;
	botlib_import.inPVS = BotImport_inPVS;
	botlib_import.BSPEntityData = BotImport_BSPEntityData;
	botlib_import.BSPModelMinsMaxsOrigin = BotImport_BSPModelMinsMaxsOrigin;
	botlib_import.BotClientCommand = BotClientCommand;

	//memory management
	botlib_import.GetMemory = BotImport_GetMemory;
	botlib_import.FreeMemory = BotImport_FreeMemory;
	botlib_import.AvailableMemory = Z_AvailableMemory;
	botlib_import.HunkAlloc = BotImport_HunkAlloc;

	// file system access
	botlib_import.FS_FOpenFile = FS_FOpenFileByMode;
	botlib_import.FS_Read = FS_Read2;
	botlib_import.FS_Write = FS_Write;
	botlib_import.FS_FCloseFile = FS_FCloseFile;
	botlib_import.FS_Seek = FS_Seek;

	//debug lines
	botlib_import.DebugLineCreate = BotImport_DebugLineCreate;
	botlib_import.DebugLineDelete = BotImport_DebugLineDelete;
	botlib_import.DebugLineShow = BotImport_DebugLineShow;

	//debug polygons
	botlib_import.DebugPolygonCreate = BotImport_DebugPolygonCreate;
	botlib_import.DebugPolygonDelete = BotImport_DebugPolygonDelete;

	botlib_export = (botlib_export_t *)FUNC3( BOTLIB_API_VERSION, &botlib_import );
	FUNC7(botlib_export); 	// bk001129 - somehow we end up with a zero import.
}