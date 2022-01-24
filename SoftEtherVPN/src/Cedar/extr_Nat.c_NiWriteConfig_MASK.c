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
struct TYPE_5__ {int /*<<< orphan*/  lock; int /*<<< orphan*/  CfgRw; int /*<<< orphan*/ * ClientAuth; int /*<<< orphan*/ * ClientOption; int /*<<< orphan*/  Online; int /*<<< orphan*/  AdminPort; int /*<<< orphan*/  HashedPassword; int /*<<< orphan*/  AdminK; int /*<<< orphan*/  AdminX; } ;
typedef  TYPE_1__ NAT ;
typedef  int /*<<< orphan*/  FOLDER ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ ,int,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC10 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ ,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  TAG_ROOT ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC13 (int /*<<< orphan*/ ,int) ; 

void FUNC14(NAT *n)
{
	// Validate arguments
	if (n == NULL)
	{
		return;
	}

	FUNC8(n->lock);
	{
		FOLDER *root = FUNC4(NULL, TAG_ROOT);
		BUF *b;

		// Certificate
		b = FUNC13(n->AdminX, false);
		FUNC1(root, "AdminCert", b);
		FUNC6(b);

		// Secret key
		b = FUNC7(n->AdminK, false, NULL);
		FUNC1(root, "AdminKey", b);
		FUNC6(b);

		// Password
		FUNC2(root, "HashedPassword", n->HashedPassword, sizeof(n->HashedPassword));
		FUNC3(root, "AdminPort", n->AdminPort);
		FUNC0(root, "Online", n->Online);

		// Virtual host option
		FUNC10(n, root);

		// Connection options
		if (n->ClientOption != NULL && n->ClientAuth != NULL)
		{
			FUNC9(n, root);
		}

		FUNC11(n->CfgRw, root);
		FUNC5(root);
	}
	FUNC12(n->lock);
}