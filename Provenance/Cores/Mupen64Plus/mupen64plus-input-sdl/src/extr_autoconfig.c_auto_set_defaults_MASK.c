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
typedef  int /*<<< orphan*/ * m64p_handle ;
typedef  int /*<<< orphan*/  FILE ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 scalar_t__ FUNC1 (char*,int /*<<< orphan*/ **) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,...) ; 
 char* INI_FILE_NAME ; 
 scalar_t__ M64ERR_SUCCESS ; 
 int /*<<< orphan*/  M64MSG_ERROR ; 
 int /*<<< orphan*/  M64TYPE_BOOL ; 
 int /*<<< orphan*/  M64TYPE_INT ; 
 int /*<<< orphan*/  M64TYPE_STRING ; 
 int /*<<< orphan*/  SEEK_END ; 
 int /*<<< orphan*/  SEEK_SET ; 
 char* FUNC4 (char*) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (char const*,char*) ; 
 long FUNC8 (char*,int,long,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,long,int /*<<< orphan*/ ) ; 
 long FUNC11 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC12 (long) ; 
 int /*<<< orphan*/  FUNC13 (char*,char*,int) ; 
 scalar_t__ FUNC14 (char*,char*) ; 
 int /*<<< orphan*/ * FUNC15 (char const*,char*) ; 
 char* FUNC16 (char*,char) ; 
 scalar_t__ FUNC17 (char*,char*) ; 
 int FUNC18 (char const*) ; 
 scalar_t__ FUNC19 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC20 (char*,char*,int) ; 

int FUNC21(int iDeviceIdx, const char *joySDLName)
{
    FILE *pfIn;
    m64p_handle pConfig = NULL;
    const char *CfgFilePath = FUNC0(INI_FILE_NAME);
    enum { E_NAME_SEARCH, E_NAME_FOUND, E_PARAM_READ } eParseState;
    char *pchIni, *pchNextLine, *pchCurLine;
    long iniLength;
    int ControllersFound = 0;

    /* if we couldn't get a name (no joystick plugged in to given port), then return with a failure */
    if (joySDLName == NULL)
        return 0;
    /* if we couldn't find the shared data file, dump an error and return */
    if (CfgFilePath == NULL || FUNC18(CfgFilePath) < 1)
    {
        FUNC3(M64MSG_ERROR, "Couldn't find config file '%s'", INI_FILE_NAME);
        return 0;
    }

    /* read the input auto-config .ini file */
    pfIn = FUNC7(CfgFilePath, "rb");
    if (pfIn == NULL)
    {
        FUNC3(M64MSG_ERROR, "Couldn't open config file '%s'", CfgFilePath);
        return 0;
    }
    FUNC10(pfIn, 0L, SEEK_END);
    iniLength = FUNC11(pfIn);
    FUNC10(pfIn, 0L, SEEK_SET);
    pchIni = (char *) FUNC12(iniLength + 1);
    if (pchIni == NULL)
    {
        FUNC3(M64MSG_ERROR, "Couldn't allocate %li bytes for config file '%s'", iniLength, CfgFilePath);
        FUNC6(pfIn);
        return 0;
    }
    if (FUNC8(pchIni, 1, iniLength, pfIn) != iniLength)
    {
        FUNC3(M64MSG_ERROR, "File read failed for %li bytes of config file '%s'", iniLength, CfgFilePath);
        FUNC9(pchIni);
        FUNC6(pfIn);
        return 0;
    }
    FUNC6(pfIn);
    pchIni[iniLength] = 0;

    /* parse the INI file, line by line */
    pchNextLine = pchIni;
    eParseState = E_NAME_SEARCH;
    while (pchNextLine != NULL && *pchNextLine != 0)
    {
        char *pivot = NULL;
        /* set up character pointers */
        pchCurLine = pchNextLine;
        pchNextLine = FUNC16(pchNextLine, '\n');
        if (pchNextLine != NULL)
            *pchNextLine++ = 0;
        pchCurLine = FUNC4(pchCurLine);

        /* handle blank/comment lines */
        if (FUNC18(pchCurLine) < 1 || *pchCurLine == ';' || *pchCurLine == '#')
            continue;

        /* handle section (joystick name in ini file) */
        if (*pchCurLine == '[' && pchCurLine[FUNC18(pchCurLine)-1] == ']')
        {
            char Word[64];
            char *wordPtr;
            int  joyFound = 1;

            if (eParseState == E_PARAM_READ)
            {
                /* we've finished parsing all parameters for the discovered input device */
                FUNC9(pchIni);
                return ControllersFound;
            }
            else if (eParseState == E_NAME_FOUND)
            {
                /* this is an equivalent device name to the one we're looking for (and found); keep looking for parameters */
                continue;
            }
            /* we need to look through the device name word by word to see if it matches the joySDLName that we're looking for */ 
            pchCurLine[FUNC18(pchCurLine)-1] = 0;
            wordPtr = FUNC4(pchCurLine + 1);
            /* first, if there is a preceding system name in this .ini device name, and the system matches, then strip out */
#if defined(__unix__)
            if (FUNC19(wordPtr, "Unix:", 5) == 0)
                wordPtr = FUNC4(wordPtr + 5);
#endif
#if defined(__linux__)
            if (FUNC19(wordPtr, "Linux:", 6) == 0)
                wordPtr = FUNC4(wordPtr + 6);
#endif
#if defined(__APPLE__)
            if (strncmp(wordPtr, "OSX:", 4) == 0)
                wordPtr = StripSpace(wordPtr + 4);
#endif
#if defined(WIN32)
            if (strncmp(wordPtr, "Win32:", 6) == 0)
                wordPtr = StripSpace(wordPtr + 6);
#endif
            /* search in the .ini device name for all the words in the joystick name.  If any are missing, then this is not the right joystick model */
            while (wordPtr != NULL && FUNC18(wordPtr) > 0)
            {
                char *nextSpace = FUNC16(wordPtr, ' ');
                if (nextSpace == NULL)
                {
                    FUNC20(Word, wordPtr, 63);
                    Word[63] = 0;
                    wordPtr = NULL;
                }
                else
                {
                    int length = (int) (nextSpace - wordPtr);
                    if (length > 63) length = 63;
                    FUNC20(Word, wordPtr, length);
                    Word[length] = 0;
                    wordPtr = nextSpace + 1;
                }
                if (FUNC15(joySDLName, Word) == NULL)
                    joyFound = 0;
            }
            /* if we found the right joystick, then open up the core config section to store parameters and set the 'device' param */
            if (joyFound)
            {
                char SectionName[32];
                FUNC13(SectionName, "AutoConfig%i", ControllersFound);
                if (FUNC1(SectionName, &pConfig) != M64ERR_SUCCESS)
                {
                    FUNC3(M64MSG_ERROR, "auto_set_defaults(): Couldn't open config section '%s'", SectionName);
                    FUNC9(pchIni);
                    return 0;
                }
                eParseState = E_NAME_FOUND;
                ControllersFound++;
                FUNC2(pConfig, "device", M64TYPE_INT, &iDeviceIdx);
            }
            continue;
        }

        /* handle parameters */
        pivot = FUNC16(pchCurLine, '=');
        if (pivot != NULL)
        {
            /* if we haven't found the correct section yet, just skip this */
            if (eParseState == E_NAME_SEARCH)
                continue;
            eParseState = E_PARAM_READ;
            /* otherwise, store this parameter in the current active joystick config */
            *pivot++ = 0;
            pchCurLine = FUNC4(pchCurLine);
            pivot = FUNC4(pivot);
            if (FUNC14(pchCurLine, "plugin") == 0 || FUNC14(pchCurLine, "device") == 0)
            {
                int iVal = FUNC5(pivot);
                FUNC2(pConfig, pchCurLine, M64TYPE_INT, &iVal);
            }
            else if (FUNC14(pchCurLine, "plugged") == 0 || FUNC14(pchCurLine, "mouse") == 0)
            {
                int bVal = (FUNC14(pivot, "true") == 0);
                FUNC2(pConfig, pchCurLine, M64TYPE_BOOL, &bVal);
            }
            else
            {
                FUNC2(pConfig, pchCurLine, M64TYPE_STRING, pivot);
            }
            continue;
        }

        /* handle keywords */
        if (pchCurLine[FUNC18(pchCurLine)-1] == ':')
        {
            /* if we haven't found the correct section yet, just skip this */
            if (eParseState == E_NAME_SEARCH)
                continue;
            /* otherwise parse the keyword */
            if (FUNC17(pchCurLine, "__NextController:") == 0)
            {
                char SectionName[32];
                /* if there are no more N64 controller spaces left, then exit */
                if (ControllersFound == 4)
                {
                    FUNC9(pchIni);
                    return ControllersFound;
                }
                /* otherwise go to the next N64 controller */
                FUNC13(SectionName, "AutoConfig%i", ControllersFound);
                if (FUNC1(SectionName, &pConfig) != M64ERR_SUCCESS)
                {
                    FUNC3(M64MSG_ERROR, "auto_set_defaults(): Couldn't open config section '%s'", SectionName);
                    FUNC9(pchIni);
                    return ControllersFound;
                }
                ControllersFound++;
                FUNC2(pConfig, "device", M64TYPE_INT, &iDeviceIdx);
            }
            else
            {
                FUNC3(M64MSG_ERROR, "Unknown keyword '%s' in %s", pchCurLine, INI_FILE_NAME);
            }
            continue;
        }

        /* unhandled line in .ini file */
        FUNC3(M64MSG_ERROR, "Invalid line in %s: '%s'", INI_FILE_NAME, pchCurLine);
    }

    if (eParseState == E_PARAM_READ)
    {
        /* we've finished parsing all parameters for the discovered input device, which is the last in the .ini file */
        FUNC9(pchIni);
        return ControllersFound;
    }

    FUNC9(pchIni);
    return 0;
}