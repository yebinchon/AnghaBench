#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_5__   TYPE_1__ ;

/* Type definitions */
struct TYPE_5__ {int /*<<< orphan*/  AdminK; int /*<<< orphan*/  AdminX; int /*<<< orphan*/  Online; int /*<<< orphan*/  AdminPort; int /*<<< orphan*/  HashedPassword; } ;
typedef  TYPE_1__ NAT ;
typedef  int /*<<< orphan*/  FOLDER ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,int,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/ * FUNC3 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/ * FUNC5 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ *) ; 

bool FUNC10(NAT *n, FOLDER *root)
{
	FOLDER *host;
	BUF *b;
	// Validate arguments
	if (n == NULL || root == NULL)
	{
		return false;
	}

	host = FUNC5(root, "VirtualHost");
	if (host == NULL)
	{
		return false;
	}

	FUNC4(root, "HashedPassword", n->HashedPassword, sizeof(n->HashedPassword));
	n->AdminPort = FUNC6(root, "AdminPort");
	n->Online = FUNC2(root, "Online");

	b = FUNC3(root, "AdminCert");
	if (b != NULL)
	{
		n->AdminX = FUNC1(b, false);
		FUNC7(b);
	}

	b = FUNC3(root, "AdminKey");
	if (b != NULL)
	{
		n->AdminK = FUNC0(b, true, false, NULL);
		FUNC7(b);
	}

	FUNC9(n, root);

	FUNC8(n, root);

	return true;
}