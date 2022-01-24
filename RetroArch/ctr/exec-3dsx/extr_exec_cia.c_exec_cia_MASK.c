#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_6__   TYPE_2__ ;
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct stat {int /*<<< orphan*/  st_mode; } ;
struct TYPE_5__ {size_t argc; char* args; } ;
typedef  TYPE_1__ ciaParam ;
struct TYPE_6__ {int /*<<< orphan*/  titleID; int /*<<< orphan*/  version; } ;
typedef  int /*<<< orphan*/  Result ;
typedef  int /*<<< orphan*/  Handle ;
typedef  int /*<<< orphan*/  FS_Archive ;
typedef  TYPE_2__ AM_TitleEntry ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ,TYPE_2__*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  ARCHIVE_SDMC ; 
 int /*<<< orphan*/  EINVAL ; 
 int /*<<< orphan*/  ENOENT ; 
 int /*<<< orphan*/  ENOTSUP ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FS_OPEN_READ ; 
 int /*<<< orphan*/  MEDIATYPE_SD ; 
 int /*<<< orphan*/  PATH_ASCII ; 
 int /*<<< orphan*/  PATH_EMPTY ; 
 scalar_t__ FUNC7 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC8 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 () ; 
 int /*<<< orphan*/  argvHmac ; 
 int /*<<< orphan*/  errno ; 
 int /*<<< orphan*/  FUNC12 (char*) ; 
 int /*<<< orphan*/  FUNC13 () ; 
 int /*<<< orphan*/  FUNC14 () ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ ,char const*) ; 
 int FUNC16 (int /*<<< orphan*/ ) ; 
 int FUNC17 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC18 (char const*,struct stat*) ; 
 int /*<<< orphan*/  FUNC19 (char*,char const*) ; 
 scalar_t__ FUNC20 (char const*) ; 

int FUNC21(const char* path, const char** args){
	struct stat sBuff;
	bool fileExists;
	bool inited;

	if(path == NULL || path[0] == '\0'){
		errno = EINVAL;
		return -1;
	}

	fileExists = FUNC18(path, &sBuff) == 0;
	if(!fileExists){
		errno = ENOENT;
		return -1;
	}
	else if(FUNC9(sBuff.st_mode)){
		errno = EINVAL;;
		return -1;
	}

	inited = FUNC8(FUNC11()) && FUNC8(FUNC14());
	if(inited){
		Result res;
		AM_TitleEntry ciaInfo;
		FS_Archive ciaArchive;
		Handle ciaFile;
		int ciaInstalled;
		ciaParam param;
		int argsLength;

		//open cia file
		res = FUNC5(&ciaArchive, ARCHIVE_SDMC, FUNC15(PATH_EMPTY, ""));
		if(FUNC7(res))
			FUNC12("Cant open SD FS archive.");

		res = FUNC6(&ciaFile, ciaArchive, FUNC15(PATH_ASCII, path + 5/*skip "sdmc:"*/), FS_OPEN_READ, 0);
		if(FUNC7(res))
			FUNC12("Cant open CIA file.");

		res = FUNC0(MEDIATYPE_SD, &ciaInfo, ciaFile);
		if(FUNC7(res))
			FUNC12("Cant get CIA file info.");

		ciaInstalled = FUNC17(ciaInfo.titleID, ciaInfo.version);
		if(ciaInstalled == -1){
			//error
			FUNC12("Could not read title id list.");
		}
		else if(ciaInstalled == 0){
			//not installed
			int error = FUNC16(ciaFile);
			if(error == -1)
				FUNC12("Cant install CIA.");
		}

		FUNC3(ciaFile);
		FUNC4(ciaArchive);

		param.argc = 0;
		argsLength = 0;
		char* argLocation = param.args;
		while(args[param.argc] != NULL){
			FUNC19(argLocation, args[param.argc]);
			argLocation += FUNC20(args[param.argc]) + 1;
			argsLength += FUNC20(args[param.argc]) + 1;
			param.argc++;
		}

		res = FUNC2(0, ciaInfo.titleID, 0x1);
		if(FUNC7(res))
			FUNC12("CIA cant run, cant prepare.");

		res = FUNC1(&param, sizeof(param.argc) + argsLength, argvHmac);
		if(FUNC7(res))
			FUNC12("CIA cant run, cant jump.");

		//wait for application jump, for some reason its not instant
		while(1);
	}

	//should never be reached
	FUNC10();
	FUNC13();
	errno = ENOTSUP;
	return -1;
}