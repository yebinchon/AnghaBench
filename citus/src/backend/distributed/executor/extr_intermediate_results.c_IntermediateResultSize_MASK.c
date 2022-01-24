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
struct stat {int /*<<< orphan*/  st_size; } ;
typedef  int int64 ;

/* Variables and functions */
 char* FUNC0 (char*) ; 
 int FUNC1 (char*,struct stat*) ; 

int64
FUNC2(char *resultId)
{
	char *resultFileName = NULL;
	struct stat fileStat;
	int statOK = 0;

	resultFileName = FUNC0(resultId);
	statOK = FUNC1(resultFileName, &fileStat);
	if (statOK < 0)
	{
		return -1;
	}

	return (int64) fileStat.st_size;
}