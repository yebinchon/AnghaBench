
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int strlen (char*) ;

__attribute__((used)) static char *StripSpace(char *pIn)
{
    char *pEnd = pIn + strlen(pIn) - 1;

    while (*pIn == ' ' || *pIn == '\t' || *pIn == '\r' || *pIn == '\n')
        pIn++;

    while (pIn <= pEnd && (*pEnd == ' ' || *pEnd == '\t' || *pEnd == '\r' || *pEnd == '\n'))
        *pEnd-- = 0;

    return pIn;
}
