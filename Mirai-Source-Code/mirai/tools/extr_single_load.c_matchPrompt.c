
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int free (char*) ;
 char* malloc (int) ;
 int memset (char*,int ,int) ;
 int * strchr (char*,char) ;
 int strlen (char*) ;
 int strncat (char*,char*,int) ;

int matchPrompt(char *bufStr)
{
    int i = 0, q = 0;
    char *prompts = ":>%$#";

    char *tmpStr = malloc(strlen(bufStr) + 1);
    memset(tmpStr, 0, strlen(bufStr) + 1);


    char in_escape = 0;
    for (i = 0; i < strlen(bufStr); i++)
    {
        if (bufStr[i] == '\x1B')
        {
            if (in_escape == 0)
                in_escape = 1;
        } else if ((in_escape == 1) && (strchr("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz", bufStr[i]) != ((void*)0)))
        {
            in_escape = 0;
        } else if (in_escape == 0)
        {
            strncat(tmpStr, &(bufStr[i]), 1);
        }
    }

    int bufLen = strlen(tmpStr);
    for(i = 0; i < strlen(prompts); i++)
    {
        while(bufLen > q && (*(tmpStr + bufLen - q) == 0x00 || *(tmpStr + bufLen - q) == ' ' || *(tmpStr + bufLen - q) == '\r' || *(tmpStr + bufLen - q) == '\n')) q++;

        if(*(tmpStr + bufLen - q) == prompts[i])
        {
            free(tmpStr);
            return 1;
        }
    }

    free(tmpStr);
    return 0;
}
