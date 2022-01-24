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
 int CASESENSITIVITYDEFAULTVALUE ; 
 int FUNC0 (char const*,char const*) ; 
 int FUNC1 (char const*,char const*) ; 

extern  int FUNC2 (const char* fileName1,const char* fileName2,int iCaseSensitivity)
{
	if (iCaseSensitivity==0)
		iCaseSensitivity=CASESENSITIVITYDEFAULTVALUE;

	if (iCaseSensitivity==1)
		return FUNC1(fileName1,fileName2);

	return FUNC0(fileName1,fileName2);
}