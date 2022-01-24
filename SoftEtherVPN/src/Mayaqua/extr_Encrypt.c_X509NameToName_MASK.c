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
struct TYPE_4__ {void* Local; void* State; void* Country; void* Unit; void* Organization; void* CommonName; } ;
typedef  TYPE_1__ NAME ;

/* Variables and functions */
 void* FUNC0 (void*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  NID_commonName ; 
 int /*<<< orphan*/  NID_countryName ; 
 int /*<<< orphan*/  NID_localityName ; 
 int /*<<< orphan*/  NID_organizationName ; 
 int /*<<< orphan*/  NID_organizationalUnitName ; 
 int /*<<< orphan*/  NID_stateOrProvinceName ; 
 TYPE_1__* FUNC1 (int) ; 

NAME *FUNC2(void *xn)
{
	NAME *n;
	// Validate arguments
	if (xn == NULL)
	{
		return NULL;
	}

	n = FUNC1(sizeof(NAME));

	// Get the strings one by one
	n->CommonName = FUNC0(xn, NID_commonName);
	n->Organization = FUNC0(xn, NID_organizationName);
	n->Unit = FUNC0(xn, NID_organizationalUnitName);
	n->Country = FUNC0(xn, NID_countryName);
	n->State = FUNC0(xn, NID_stateOrProvinceName);
	n->Local = FUNC0(xn, NID_localityName);

	return n;
}