#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ wchar_t ;
typedef  int UINT ;
struct TYPE_3__ {char* Name; int /*<<< orphan*/  Value; } ;
typedef  TYPE_1__ STRMAP_ENTRY ;
typedef  int /*<<< orphan*/  LIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,TYPE_1__*) ; 
 int FUNC1 (scalar_t__*) ; 
 int /*<<< orphan*/  FUNC2 (scalar_t__*) ; 
 scalar_t__ FUNC3 (int) ; 
 int /*<<< orphan*/ * FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (char*,int,scalar_t__*) ; 
 scalar_t__* FUNC6 (scalar_t__*,int,scalar_t__**) ; 

__attribute__((used)) static LIST *FUNC7(wchar_t *def)
{
	LIST *table;
	STRMAP_ENTRY *entry;
	
	if(def==NULL)
	{
		return NULL;
	}

	table = FUNC4();
	while(*def)
	{
		wchar_t *keytmp;
		UINT keylen;
		entry = (STRMAP_ENTRY*)FUNC3(sizeof(STRMAP_ENTRY));
		def = FUNC6(def, L':', &keytmp);
		keylen = FUNC1(keytmp);
		entry->Name = (char*)FUNC3(keylen);
		FUNC5(entry->Name, keylen, keytmp);
		def = FUNC6(def, L',', (wchar_t**)&(entry->Value));
		FUNC0(table, entry);
		FUNC2(keytmp);
	}
	return table;
}