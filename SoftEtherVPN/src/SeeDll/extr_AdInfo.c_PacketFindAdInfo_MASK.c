#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
struct TYPE_4__ {struct TYPE_4__* Next; int /*<<< orphan*/  Name; } ;
typedef  int /*<<< orphan*/  PCHAR ;
typedef  TYPE_1__* PADAPTER_INFO ;

/* Variables and functions */
 TYPE_1__* AdaptersInfoList ; 
 int /*<<< orphan*/  FUNC0 () ; 
 scalar_t__ FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 

PADAPTER_INFO FUNC2(PCHAR AdapterName)
{
	//this function should NOT acquire the AdaptersInfoMutex, since it does return an ADAPTER_INFO structure
	PADAPTER_INFO TAdInfo;
	
	if (AdaptersInfoList == NULL)
		FUNC0();

	TAdInfo = AdaptersInfoList;
	
	while(TAdInfo != NULL)
	{
		if(FUNC1(TAdInfo->Name, AdapterName) == 0) break;

		TAdInfo = TAdInfo->Next;
	}

	return TAdInfo;
}