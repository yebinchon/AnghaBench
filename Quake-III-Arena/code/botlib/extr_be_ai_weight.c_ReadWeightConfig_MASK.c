#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_19__   TYPE_6__ ;
typedef  struct TYPE_18__   TYPE_4__ ;
typedef  struct TYPE_17__   TYPE_3__ ;
typedef  struct TYPE_16__   TYPE_2__ ;
typedef  struct TYPE_15__   TYPE_1__ ;

/* Type definitions */
struct TYPE_16__ {char* filename; size_t numweights; TYPE_1__* weights; } ;
typedef  TYPE_2__ weightconfig_t ;
struct TYPE_17__ {char* string; } ;
typedef  TYPE_3__ token_t ;
typedef  int /*<<< orphan*/  source_t ;
struct TYPE_18__ {int /*<<< orphan*/ * child; int /*<<< orphan*/ * next; int /*<<< orphan*/  value; scalar_t__ index; } ;
typedef  TYPE_4__ fuzzyseperator_t ;
struct TYPE_19__ {int /*<<< orphan*/  (* Print ) (int /*<<< orphan*/ ,char*,int) ;} ;
struct TYPE_15__ {char* name; TYPE_4__* firstseperator; } ;

/* Variables and functions */
 int /*<<< orphan*/  BOTFILESBASEFOLDER ; 
 int /*<<< orphan*/  FUNC0 (TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (TYPE_2__*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 int /*<<< orphan*/  MAX_INVENTORYVALUE ; 
 size_t MAX_WEIGHTS ; 
 int MAX_WEIGHT_FILES ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ,TYPE_3__*) ; 
 scalar_t__ FUNC9 (int /*<<< orphan*/ *,TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  PRT_ERROR ; 
 int /*<<< orphan*/  PRT_MESSAGE ; 
 int /*<<< orphan*/  FUNC11 (char*,char*,int) ; 
 TYPE_4__* FUNC12 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,TYPE_4__*) ; 
 int /*<<< orphan*/  FUNC14 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC15 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC16 (char*) ; 
 int FUNC17 () ; 
 int /*<<< orphan*/  TT_STRING ; 
 scalar_t__ bot_developer ; 
 TYPE_6__ botimport ; 
 int qfalse ; 
 int qtrue ; 
 scalar_t__ FUNC18 (char*,char*) ; 
 int /*<<< orphan*/  FUNC19 (char*,char*) ; 
 int FUNC20 (char*) ; 
 int /*<<< orphan*/  FUNC21 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC22 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC23 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC24 (int /*<<< orphan*/ ,char*,int) ; 
 TYPE_2__** weightFileList ; 

weightconfig_t *FUNC25(char *filename)
{
	int newindent, avail = 0, n;
	token_t token;
	source_t *source;
	fuzzyseperator_t *fs;
	weightconfig_t *config = NULL;
#ifdef DEBUG
	int starttime;

	starttime = Sys_MilliSeconds();
#endif //DEBUG

	if (!FUNC4("bot_reloadcharacters"))
	{
		avail = -1;
		for( n = 0; n < MAX_WEIGHT_FILES; n++ )
		{
			config = weightFileList[n];
			if( !config )
			{
				if( avail == -1 )
				{
					avail = n;
				} //end if
				continue;
			} //end if
			if( FUNC18( filename, config->filename ) == 0 )
			{
				//botimport.Print( PRT_MESSAGE, "retained %s\n", filename );
				return config;
			} //end if
		} //end for

		if( avail == -1 )
		{
			botimport.Print( PRT_ERROR, "weightFileList was full trying to load %s\n", filename );
			return NULL;
		} //end if
	} //end if

	FUNC10(BOTFILESBASEFOLDER);
	source = FUNC5(filename);
	if (!source)
	{
		botimport.Print(PRT_ERROR, "counldn't load %s\n", filename);
		return NULL;
	} //end if
	//
	config = (weightconfig_t *) FUNC3(sizeof(weightconfig_t));
	config->numweights = 0;
	FUNC11( config->filename, filename, sizeof(config->filename) );
	//parse the item config file
	while(FUNC9(source, &token))
	{
		if (!FUNC18(token.string, "weight"))
		{
			if (config->numweights >= MAX_WEIGHTS)
			{
				FUNC15(source, "too many fuzzy weights\n");
				break;
			} //end if
			if (!FUNC8(source, TT_STRING, 0, &token))
			{
				FUNC2(config);
				FUNC1(source);
				return NULL;
			} //end if
			FUNC16(token.string);
			config->weights[config->numweights].name = (char *) FUNC3(FUNC20(token.string) + 1);
			FUNC19(config->weights[config->numweights].name, token.string);
			if (!FUNC6(source, &token))
			{
				FUNC2(config);
				FUNC1(source);
				return NULL;
			} //end if
			newindent = qfalse;
			if (!FUNC18(token.string, "{"))
			{
				newindent = qtrue;
				if (!FUNC6(source, &token))
				{
					FUNC2(config);
					FUNC1(source);
					return NULL;
				} //end if
			} //end if
			if (!FUNC18(token.string, "switch"))
			{
				fs = FUNC12(source);
				if (!fs)
				{
					FUNC2(config);
					FUNC1(source);
					return NULL;
				} //end if
				config->weights[config->numweights].firstseperator = fs;
			} //end if
			else if (!FUNC18(token.string, "return"))
			{
				fs = (fuzzyseperator_t *) FUNC3(sizeof(fuzzyseperator_t));
				fs->index = 0;
				fs->value = MAX_INVENTORYVALUE;
				fs->next = NULL;
				fs->child = NULL;
				if (!FUNC13(source, fs))
				{
					FUNC0(fs);
					FUNC2(config);
					FUNC1(source);
					return NULL;
				} //end if
				config->weights[config->numweights].firstseperator = fs;
			} //end else if
			else
			{
				FUNC14(source, "invalid name %s\n", token.string);
				FUNC2(config);
				FUNC1(source);
				return NULL;
			} //end else
			if (newindent)
			{
				if (!FUNC7(source, "}"))
				{
					FUNC2(config);
					FUNC1(source);
					return NULL;
				} //end if
			} //end if
			config->numweights++;
		} //end if
		else
		{
			FUNC14(source, "invalid name %s\n", token.string);
			FUNC2(config);
			FUNC1(source);
			return NULL;
		} //end else
	} //end while
	//free the source at the end of a pass
	FUNC1(source);
	//if the file was located in a pak file
	botimport.Print(PRT_MESSAGE, "loaded %s\n", filename);
#ifdef DEBUG
	if (bot_developer)
	{
		botimport.Print(PRT_MESSAGE, "weights loaded in %d msec\n", Sys_MilliSeconds() - starttime);
	} //end if
#endif //DEBUG
	//
	if (!FUNC4("bot_reloadcharacters"))
	{
		weightFileList[avail] = config;
	} //end if
	//
	return config;
}