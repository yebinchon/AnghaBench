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
typedef  int /*<<< orphan*/  username2 ;
typedef  int /*<<< orphan*/  domainname2 ;
typedef  char UCHAR ;
struct TYPE_5__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; } ;
typedef  TYPE_1__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*,char*,int) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 int FUNC2 (char*) ; 
 int MAX_SIZE ; 
 TYPE_1__* FUNC3 () ; 
 int /*<<< orphan*/  FUNC4 (char*,char*,int,char*,int,int) ; 
 int SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC6 (char*) ; 
 int /*<<< orphan*/  FUNC7 (TYPE_1__*,char*,int) ; 

void FUNC8(UCHAR *dst, UCHAR *client_challenge, UCHAR *server_challenge, char *username)
{
	BUF *b;
	UCHAR hash[SHA1_SIZE];
	char username2[MAX_SIZE];
	char domainname2[MAX_SIZE];
	// Validate arguments
	if (dst == NULL || client_challenge == NULL || server_challenge == NULL)
	{
		return;
	}

	b = FUNC3();

	FUNC7(b, client_challenge, 16);
	FUNC7(b, server_challenge, 16);

	FUNC4(username, username2, sizeof(username2), domainname2, sizeof(domainname2), true);

	if (FUNC2(username2) == false)
	{
		FUNC7(b, username2, FUNC6(username2));
	}

	FUNC5(hash, b->Buf, b->Size);

	FUNC1(b);

	FUNC0(dst, hash, 8);
}