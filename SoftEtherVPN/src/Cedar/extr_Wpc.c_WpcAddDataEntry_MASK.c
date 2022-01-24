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
typedef  int /*<<< orphan*/  size_str ;
typedef  int /*<<< orphan*/  UINT ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int,char*,int /*<<< orphan*/ ) ; 
 int WPC_DATA_ENTRY_SIZE ; 
 int /*<<< orphan*/  FUNC1 (char*,char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,void*,int) ; 

void FUNC3(BUF *b, char *name, void *data, UINT size)
{
	char entry_name[WPC_DATA_ENTRY_SIZE];
	char size_str[11];
	// Validate arguments
	if (b == NULL || name == NULL || (data == NULL && size != 0))
	{
		return;
	}

	FUNC1(entry_name, name);
	FUNC2(b, entry_name, WPC_DATA_ENTRY_SIZE);

	FUNC0(size_str, sizeof(size_str), "%010u", size);
	FUNC2(b, size_str, 10);

	FUNC2(b, data, size);
}