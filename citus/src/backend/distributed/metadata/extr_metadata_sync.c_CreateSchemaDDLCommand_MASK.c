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
struct TYPE_4__ {char* data; } ;
typedef  TYPE_1__* StringInfo ;
typedef  int /*<<< orphan*/  Oid ;

/* Variables and functions */
 int /*<<< orphan*/  CREATE_SCHEMA_COMMAND ; 
 int /*<<< orphan*/  NAMEDATALEN ; 
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int /*<<< orphan*/ ,char const*,char const*) ; 
 char* FUNC2 (int /*<<< orphan*/ ) ; 
 TYPE_1__* FUNC3 () ; 
 char* FUNC4 (char*) ; 
 scalar_t__ FUNC5 (char*,char*,int /*<<< orphan*/ ) ; 

char *
FUNC6(Oid schemaId)
{
	char *schemaName = FUNC2(schemaId);
	StringInfo schemaNameDef = NULL;
	const char *ownerName = NULL;
	const char *quotedSchemaName = NULL;

	if (FUNC5(schemaName, "public", NAMEDATALEN) == 0)
	{
		return NULL;
	}

	schemaNameDef = FUNC3();
	quotedSchemaName = FUNC4(schemaName);
	ownerName = FUNC4(FUNC0(schemaId));
	FUNC1(schemaNameDef, CREATE_SCHEMA_COMMAND, quotedSchemaName, ownerName);

	return schemaNameDef->data;
}