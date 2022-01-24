#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
struct TYPE_2__ {scalar_t__ textSendAsJsonbFunctionId; } ;
typedef  scalar_t__ Oid ;
typedef  int /*<<< orphan*/  List ;

/* Variables and functions */
 scalar_t__ InvalidOid ; 
 scalar_t__ FUNC0 (int /*<<< orphan*/ *,int,scalar_t__*,int) ; 
 TYPE_1__ MetadataCache ; 
 scalar_t__ TEXTOID ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC2 (char*) ; 

Oid
FUNC3(void)
{
	if (MetadataCache.textSendAsJsonbFunctionId == InvalidOid)
	{
		List *nameList = FUNC1(FUNC2("pg_catalog"),
									FUNC2("citus_text_send_as_jsonb"));
		Oid paramOids[1] = { TEXTOID };

		MetadataCache.textSendAsJsonbFunctionId =
			FUNC0(nameList, 1, paramOids, false);
	}

	return MetadataCache.textSendAsJsonbFunctionId;
}