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

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 char* FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC3 (char*,char) ; 
 int FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*,int) ; 

int FUNC6(char *bufStr)
{
    int i = 0, q = 0;
    char *prompts = ":>%$#";
    
    char *tmpStr = FUNC1(FUNC4(bufStr) + 1);
    FUNC2(tmpStr, 0, FUNC4(bufStr) + 1);
    
    // ayy lmao copy pasta for removing ansi shit
    char in_escape = 0;
    for (i = 0; i < FUNC4(bufStr); i++)
    {
        if (bufStr[i] == '\x1B')
        {
            if (in_escape == 0) 
                in_escape = 1;
        } else if ((in_escape == 1) && (FUNC3("ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz", bufStr[i]) != NULL))
        {
            in_escape = 0;
        } else if (in_escape == 0) 
        {
            FUNC5(tmpStr, &(bufStr[i]), 1);
        }
    }
    
    int bufLen = FUNC4(tmpStr);
    for(i = 0; i < FUNC4(prompts); i++)
    {
        while(bufLen > q && (*(tmpStr + bufLen - q) == 0x00 || *(tmpStr + bufLen - q) == ' ' || *(tmpStr + bufLen - q) == '\r' || *(tmpStr + bufLen - q) == '\n')) q++;
        
        if(*(tmpStr + bufLen - q) == prompts[i])
        {
            FUNC0(tmpStr);
            return 1;
        }           
    }
    
    FUNC0(tmpStr);
    return 0;
}