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
typedef  int /*<<< orphan*/  digest ;
typedef  char UCHAR ;
struct TYPE_5__ {int /*<<< orphan*/  Size; int /*<<< orphan*/  Buf; } ;
typedef  TYPE_1__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*) ; 
 TYPE_1__* FUNC1 () ; 
 int SHA1_SIZE ; 
 int /*<<< orphan*/  FUNC2 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int FUNC3 (char*) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*,char*,int) ; 

void FUNC5(UCHAR *dst, UCHAR *nt_password_hash_hash, UCHAR *client_response, UCHAR *challenge8)
{
	UCHAR digest[SHA1_SIZE];
	BUF *b;
	char *magic1 = "Magic server to client signing constant";
	char *magic2 = "Pad to make it do more than one iteration";
	// Validate arguments
	if (dst == NULL || nt_password_hash_hash == NULL || client_response == NULL || challenge8 == NULL)
	{
		return;
	}

	b = FUNC1();
	FUNC4(b, nt_password_hash_hash, 16);
	FUNC4(b, client_response, 24);
	FUNC4(b, magic1, FUNC3(magic1));
	FUNC2(digest, b->Buf, b->Size);
	FUNC0(b);

	b = FUNC1();
	FUNC4(b, digest, sizeof(digest));
	FUNC4(b, challenge8, 8);
	FUNC4(b, magic2, FUNC3(magic2));
	FUNC2(dst, b->Buf, b->Size);
	FUNC0(b);
}