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
 int FDFS_FILE_EXT_NAME_MAX_LEN ; 
 int /*<<< orphan*/ * FUNC0 (char const*,char) ; 
 int FUNC1 (char const*) ; 
 char* FUNC2 (char const*,char) ; 

const char *FUNC3(const char *filename, 
	const bool twoExtName)
{
	const char *fileExtName;
	const char *p;
	const char *pStart;
	int extNameLen;

	fileExtName = FUNC2(filename, '.');
	if (fileExtName == NULL)
	{
		return NULL;
	}

	extNameLen = FUNC1(fileExtName + 1);
	if (extNameLen > FDFS_FILE_EXT_NAME_MAX_LEN)
	{
		return NULL;
	}

	if (FUNC0(fileExtName + 1, '/') != NULL) //invalid extension name
	{
		return NULL;
	}

	if (!twoExtName)
	{
		return fileExtName + 1;
	}

	pStart = fileExtName - (FDFS_FILE_EXT_NAME_MAX_LEN - extNameLen) - 1;
	if (pStart < filename)
	{
		pStart = filename;
	}

	p = fileExtName - 1;  //before .
	while ((p > pStart) && (*p != '.'))
	{
		p--;
	}

	if (p > pStart)  //found (extension name have a dot)
	{
		if (FUNC0(p + 1, '/') == NULL)  //valid extension name
		{
			return p + 1;   //skip .
		}
	}

	return fileExtName + 1;  //skip .
}