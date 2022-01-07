
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int * m64p_handle ;
typedef int FILE ;


 char* ConfigGetSharedDataFilepath (char*) ;
 scalar_t__ ConfigOpenSection (char*,int **) ;
 int ConfigSetParameter (int *,char*,int ,...) ;
 int DebugMessage (int ,char*,...) ;
 char* INI_FILE_NAME ;
 scalar_t__ M64ERR_SUCCESS ;
 int M64MSG_ERROR ;
 int M64TYPE_BOOL ;
 int M64TYPE_INT ;
 int M64TYPE_STRING ;
 int SEEK_END ;
 int SEEK_SET ;
 char* StripSpace (char*) ;
 int atoi (char*) ;
 int fclose (int *) ;
 int * fopen (char const*,char*) ;
 long fread (char*,int,long,int *) ;
 int free (char*) ;
 int fseek (int *,long,int ) ;
 long ftell (int *) ;
 scalar_t__ malloc (long) ;
 int sprintf (char*,char*,int) ;
 scalar_t__ strcasecmp (char*,char*) ;
 int * strcasestr (char const*,char*) ;
 char* strchr (char*,char) ;
 scalar_t__ strcmp (char*,char*) ;
 int strlen (char const*) ;
 scalar_t__ strncmp (char*,char*,int) ;
 int strncpy (char*,char*,int) ;

int auto_set_defaults(int iDeviceIdx, const char *joySDLName)
{
    FILE *pfIn;
    m64p_handle pConfig = ((void*)0);
    const char *CfgFilePath = ConfigGetSharedDataFilepath(INI_FILE_NAME);
    enum { E_NAME_SEARCH, E_NAME_FOUND, E_PARAM_READ } eParseState;
    char *pchIni, *pchNextLine, *pchCurLine;
    long iniLength;
    int ControllersFound = 0;


    if (joySDLName == ((void*)0))
        return 0;

    if (CfgFilePath == ((void*)0) || strlen(CfgFilePath) < 1)
    {
        DebugMessage(M64MSG_ERROR, "Couldn't find config file '%s'", INI_FILE_NAME);
        return 0;
    }


    pfIn = fopen(CfgFilePath, "rb");
    if (pfIn == ((void*)0))
    {
        DebugMessage(M64MSG_ERROR, "Couldn't open config file '%s'", CfgFilePath);
        return 0;
    }
    fseek(pfIn, 0L, SEEK_END);
    iniLength = ftell(pfIn);
    fseek(pfIn, 0L, SEEK_SET);
    pchIni = (char *) malloc(iniLength + 1);
    if (pchIni == ((void*)0))
    {
        DebugMessage(M64MSG_ERROR, "Couldn't allocate %li bytes for config file '%s'", iniLength, CfgFilePath);
        fclose(pfIn);
        return 0;
    }
    if (fread(pchIni, 1, iniLength, pfIn) != iniLength)
    {
        DebugMessage(M64MSG_ERROR, "File read failed for %li bytes of config file '%s'", iniLength, CfgFilePath);
        free(pchIni);
        fclose(pfIn);
        return 0;
    }
    fclose(pfIn);
    pchIni[iniLength] = 0;


    pchNextLine = pchIni;
    eParseState = E_NAME_SEARCH;
    while (pchNextLine != ((void*)0) && *pchNextLine != 0)
    {
        char *pivot = ((void*)0);

        pchCurLine = pchNextLine;
        pchNextLine = strchr(pchNextLine, '\n');
        if (pchNextLine != ((void*)0))
            *pchNextLine++ = 0;
        pchCurLine = StripSpace(pchCurLine);


        if (strlen(pchCurLine) < 1 || *pchCurLine == ';' || *pchCurLine == '#')
            continue;


        if (*pchCurLine == '[' && pchCurLine[strlen(pchCurLine)-1] == ']')
        {
            char Word[64];
            char *wordPtr;
            int joyFound = 1;

            if (eParseState == E_PARAM_READ)
            {

                free(pchIni);
                return ControllersFound;
            }
            else if (eParseState == E_NAME_FOUND)
            {

                continue;
            }

            pchCurLine[strlen(pchCurLine)-1] = 0;
            wordPtr = StripSpace(pchCurLine + 1);


            if (strncmp(wordPtr, "Unix:", 5) == 0)
                wordPtr = StripSpace(wordPtr + 5);


            if (strncmp(wordPtr, "Linux:", 6) == 0)
                wordPtr = StripSpace(wordPtr + 6);
            while (wordPtr != ((void*)0) && strlen(wordPtr) > 0)
            {
                char *nextSpace = strchr(wordPtr, ' ');
                if (nextSpace == ((void*)0))
                {
                    strncpy(Word, wordPtr, 63);
                    Word[63] = 0;
                    wordPtr = ((void*)0);
                }
                else
                {
                    int length = (int) (nextSpace - wordPtr);
                    if (length > 63) length = 63;
                    strncpy(Word, wordPtr, length);
                    Word[length] = 0;
                    wordPtr = nextSpace + 1;
                }
                if (strcasestr(joySDLName, Word) == ((void*)0))
                    joyFound = 0;
            }

            if (joyFound)
            {
                char SectionName[32];
                sprintf(SectionName, "AutoConfig%i", ControllersFound);
                if (ConfigOpenSection(SectionName, &pConfig) != M64ERR_SUCCESS)
                {
                    DebugMessage(M64MSG_ERROR, "auto_set_defaults(): Couldn't open config section '%s'", SectionName);
                    free(pchIni);
                    return 0;
                }
                eParseState = E_NAME_FOUND;
                ControllersFound++;
                ConfigSetParameter(pConfig, "device", M64TYPE_INT, &iDeviceIdx);
            }
            continue;
        }


        pivot = strchr(pchCurLine, '=');
        if (pivot != ((void*)0))
        {

            if (eParseState == E_NAME_SEARCH)
                continue;
            eParseState = E_PARAM_READ;

            *pivot++ = 0;
            pchCurLine = StripSpace(pchCurLine);
            pivot = StripSpace(pivot);
            if (strcasecmp(pchCurLine, "plugin") == 0 || strcasecmp(pchCurLine, "device") == 0)
            {
                int iVal = atoi(pivot);
                ConfigSetParameter(pConfig, pchCurLine, M64TYPE_INT, &iVal);
            }
            else if (strcasecmp(pchCurLine, "plugged") == 0 || strcasecmp(pchCurLine, "mouse") == 0)
            {
                int bVal = (strcasecmp(pivot, "true") == 0);
                ConfigSetParameter(pConfig, pchCurLine, M64TYPE_BOOL, &bVal);
            }
            else
            {
                ConfigSetParameter(pConfig, pchCurLine, M64TYPE_STRING, pivot);
            }
            continue;
        }


        if (pchCurLine[strlen(pchCurLine)-1] == ':')
        {

            if (eParseState == E_NAME_SEARCH)
                continue;

            if (strcmp(pchCurLine, "__NextController:") == 0)
            {
                char SectionName[32];

                if (ControllersFound == 4)
                {
                    free(pchIni);
                    return ControllersFound;
                }

                sprintf(SectionName, "AutoConfig%i", ControllersFound);
                if (ConfigOpenSection(SectionName, &pConfig) != M64ERR_SUCCESS)
                {
                    DebugMessage(M64MSG_ERROR, "auto_set_defaults(): Couldn't open config section '%s'", SectionName);
                    free(pchIni);
                    return ControllersFound;
                }
                ControllersFound++;
                ConfigSetParameter(pConfig, "device", M64TYPE_INT, &iDeviceIdx);
            }
            else
            {
                DebugMessage(M64MSG_ERROR, "Unknown keyword '%s' in %s", pchCurLine, INI_FILE_NAME);
            }
            continue;
        }


        DebugMessage(M64MSG_ERROR, "Invalid line in %s: '%s'", INI_FILE_NAME, pchCurLine);
    }

    if (eParseState == E_PARAM_READ)
    {

        free(pchIni);
        return ControllersFound;
    }

    free(pchIni);
    return 0;
}
