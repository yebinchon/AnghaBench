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
typedef  int /*<<< orphan*/  Oid ;
typedef  int /*<<< orphan*/  Datum ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  ERROR ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int*) ; 
 int /*<<< orphan*/  InvalidOid ; 
 int SECURITY_LOCAL_USERID_CHANGE ; 
 int SPI_OK_CONNECT ; 
 int SPI_OK_FINISH ; 
 int FUNC2 () ; 
 int FUNC3 (char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ *,int,int /*<<< orphan*/ ) ; 
 int FUNC4 () ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

__attribute__((used)) static int
FUNC8(char *query, int paramCount, Oid *paramTypes,
						  Datum *paramValues)
{
	int spiConnected = 0;
	Oid savedUserId = InvalidOid;
	int savedSecurityContext = 0;
	int spiStatus = 0;
	int spiFinished = 0;

	spiConnected = FUNC2();
	if (spiConnected != SPI_OK_CONNECT)
	{
		FUNC6(ERROR, (FUNC7("could not connect to SPI manager")));
	}

	/* make sure we have write access */
	FUNC1(&savedUserId, &savedSecurityContext);
	FUNC5(FUNC0(), SECURITY_LOCAL_USERID_CHANGE);

	spiStatus = FUNC3(query, paramCount, paramTypes, paramValues,
									  NULL, false, 0);

	FUNC5(savedUserId, savedSecurityContext);

	spiFinished = FUNC4();
	if (spiFinished != SPI_OK_FINISH)
	{
		FUNC6(ERROR, (FUNC7("could not disconnect from SPI manager")));
	}

	return spiStatus;
}