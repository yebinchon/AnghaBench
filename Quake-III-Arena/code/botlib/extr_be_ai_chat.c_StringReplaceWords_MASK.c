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
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 char* FUNC1 (char*,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  qfalse ; 
 int FUNC3 (char*) ; 

void FUNC4(char *string, char *synonym, char *replacement)
{
	char *str, *str2;

	//find the synonym in the string
	str = FUNC1(string, synonym, qfalse);
	//if the synonym occured in the string
	while(str)
	{
		//if the synonym isn't part of the replacement which is already in the string
		//usefull for abreviations
		str2 = FUNC1(string, replacement, qfalse);
		while(str2)
		{
			if (str2 <= str && str < str2 + FUNC3(replacement)) break;
			str2 = FUNC1(str2+1, replacement, qfalse);
		} //end while
		if (!str2)
		{
			FUNC2(str + FUNC3(replacement), str+FUNC3(synonym), FUNC3(str+FUNC3(synonym))+1);
			//append the synonum replacement
			FUNC0(str, replacement, FUNC3(replacement));
		} //end if
		//find the next synonym in the string
		str = FUNC1(str+FUNC3(replacement), synonym, qfalse);
	} //end if
}