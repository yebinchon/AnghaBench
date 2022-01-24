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
typedef  int /*<<< orphan*/  lowercase_name ;
typedef  int /*<<< orphan*/  CIPHER ;

/* Variables and functions */
 int FUNC0 (char*) ; 
 int MAX_SIZE ; 
 int /*<<< orphan*/ * FUNC1 (char*) ; 
 char* OPENVPN_DEFAULT_CIPHER ; 
 int /*<<< orphan*/  FUNC2 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC3 (char*) ; 

CIPHER *FUNC4(char *name)
{
	CIPHER *c = NULL;

	// OpenVPN sends the cipher name in uppercase, even if it's not standard,
	// thus we have to convert it to lowercase for EVP_get_cipherbyname().
	char lowercase_name[MAX_SIZE];
	FUNC2(lowercase_name, sizeof(lowercase_name), name);
	FUNC3(lowercase_name);

	if (FUNC0(lowercase_name) == false)
	{
		c = FUNC1(lowercase_name);
	}

	if (c == NULL)
	{
		c = FUNC1(OPENVPN_DEFAULT_CIPHER);
	}

	return c;
}