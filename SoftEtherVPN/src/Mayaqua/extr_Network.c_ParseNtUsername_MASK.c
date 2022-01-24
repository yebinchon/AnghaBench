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
typedef  int /*<<< orphan*/  tmp_username ;
typedef  int /*<<< orphan*/  tmp_domain ;
typedef  int UINT ;
struct TYPE_4__ {int NumTokens; char** Token; } ;
typedef  TYPE_1__ TOKEN_LIST ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 scalar_t__ FUNC2 (char*) ; 
 int MAX_SIZE ; 
 TYPE_1__* FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,int,char*) ; 

void FUNC5(char *src_username, char *dst_username, UINT dst_username_size, char *dst_domain, UINT dst_domain_size, bool do_not_parse_atmark)
{
	char tmp_username[MAX_SIZE];
	char tmp_domain[MAX_SIZE];
	TOKEN_LIST *t;

	if (src_username != dst_username)
	{
		FUNC0(dst_username, dst_username_size);
	}

	FUNC0(dst_domain, dst_domain_size);
	// Validate arguments
	if (src_username == NULL || dst_username == NULL || dst_domain == NULL)
	{
		return;
	}

	FUNC4(tmp_username, sizeof(tmp_username), src_username);
	FUNC0(tmp_domain, sizeof(tmp_domain));

	// Analysis of username@domain.name format
	if (do_not_parse_atmark == false)
	{
		t = FUNC3(tmp_username, "@");
		if (t->NumTokens >= 1)
		{
			FUNC4(tmp_username, sizeof(tmp_username), t->Token[0]);
		}
		if (t->NumTokens >= 2)
		{
			FUNC4(tmp_domain, sizeof(tmp_domain), t->Token[1]);
		}
		FUNC1(t);
	}

	// If the username part is in "domain\username" format, split it
	t = FUNC3(tmp_username, "\\");
	if (t->NumTokens >= 2)
	{
		if (FUNC2(tmp_domain))
		{
			FUNC4(tmp_domain, sizeof(tmp_domain), t->Token[0]);
		}

		FUNC4(tmp_username, sizeof(tmp_username), t->Token[1]);
	}
	FUNC1(t);

	FUNC4(dst_username, dst_username_size, tmp_username);
	FUNC4(dst_domain, dst_domain_size, tmp_domain);
}