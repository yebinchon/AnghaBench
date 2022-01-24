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
typedef  void X509_NAME ;
struct TYPE_3__ {int /*<<< orphan*/  Local; int /*<<< orphan*/  State; int /*<<< orphan*/  Country; int /*<<< orphan*/  Unit; int /*<<< orphan*/  Organization; int /*<<< orphan*/  CommonName; } ;
typedef  TYPE_1__ NAME ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (void*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NID_commonName ; 
 int /*<<< orphan*/  NID_countryName ; 
 int /*<<< orphan*/  NID_localityName ; 
 int /*<<< orphan*/  NID_organizationName ; 
 int /*<<< orphan*/  NID_organizationalUnitName ; 
 int /*<<< orphan*/  NID_stateOrProvinceName ; 
 void* FUNC1 () ; 

void *FUNC2(NAME *nm)
{
	X509_NAME *xn;
	// Validate arguments
	if (nm == NULL)
	{
		return NULL;
	}

	xn = FUNC1();
	if (xn == NULL)
	{
		return NULL;
	}

	// Add the entries
	FUNC0(xn, NID_commonName, nm->CommonName);
	FUNC0(xn, NID_organizationName, nm->Organization);
	FUNC0(xn, NID_organizationalUnitName, nm->Unit);
	FUNC0(xn, NID_countryName, nm->Country);
	FUNC0(xn, NID_stateOrProvinceName, nm->State);
	FUNC0(xn, NID_localityName, nm->Local);

	return xn;
}