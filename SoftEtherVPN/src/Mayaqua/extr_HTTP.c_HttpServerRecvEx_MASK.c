#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_15__   TYPE_3__ ;
typedef  struct TYPE_14__   TYPE_2__ ;
typedef  struct TYPE_13__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_15__ {int /*<<< orphan*/  Version; int /*<<< orphan*/  Target; int /*<<< orphan*/  Method; } ;
struct TYPE_14__ {int /*<<< orphan*/  Data; } ;
struct TYPE_13__ {int /*<<< orphan*/  SecureMode; } ;
typedef  TYPE_1__ SOCK ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_2__ HTTP_VALUE ;
typedef  TYPE_3__ HTTP_HEADER ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *) ; 
 scalar_t__ FUNC6 (TYPE_3__*) ; 
 TYPE_2__* FUNC7 (TYPE_3__*,char*) ; 
 char* HTTP_CONTENT_TYPE2 ; 
 scalar_t__ HTTP_PACK_MAX_SIZE ; 
 char* HTTP_VPN_TARGET ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ *) ; 
 scalar_t__ MAX_NOOP_PER_SESSION ; 
 int /*<<< orphan*/ * FUNC9 (scalar_t__,int) ; 
 int /*<<< orphan*/ * FUNC10 () ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/ * FUNC12 (int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC13 (int /*<<< orphan*/ *,char*) ; 
 int FUNC14 (TYPE_1__*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC15 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC16 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC17 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC18 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 

PACK *FUNC19(SOCK *s, UINT max_data_size)
{
	BUF *b;
	PACK *p;
	HTTP_HEADER *h;
	UINT size;
	UCHAR *tmp;
	HTTP_VALUE *v;
	UINT num_noop = 0;
	if (max_data_size == 0) max_data_size = HTTP_PACK_MAX_SIZE;
	// Validate arguments
	if (s == NULL)
	{
		return NULL;
	}

START:
	h = FUNC15(s);
	if (h == NULL)
	{
		goto BAD_REQUEST;
	}

	if (FUNC17(h->Method, "POST") != 0 ||
		FUNC17(h->Target, HTTP_VPN_TARGET) != 0 ||
		FUNC17(h->Version, "HTTP/1.1") != 0)
	{
		FUNC4(h);
		goto BAD_REQUEST;
	}

	v = FUNC7(h, "Content-Type");
	if (v == NULL || FUNC17(v->Data, HTTP_CONTENT_TYPE2) != 0)
	{
		FUNC4(h);
		goto BAD_REQUEST;
	}

	size = FUNC6(h);
	if (size == 0 || (size > max_data_size))
	{
		FUNC4(h);
		goto BAD_REQUEST;
	}

	tmp = FUNC9(size, true);
	if (FUNC14(s, tmp, size, s->SecureMode) == false)
	{
		FUNC2(tmp);
		FUNC4(h);
		return NULL;
	}

	b = FUNC10();
	FUNC18(b, tmp, size);
	FUNC2(tmp);
	FUNC4(h);

	FUNC16(b, 0, 0);
	p = FUNC0(b);
	FUNC3(b);

	// Determine whether it's a NOOP
	if (FUNC13(p, "noop") != 0)
	{
		FUNC1("recv: noop\n");
		FUNC5(p);

		p = FUNC12(0);
		FUNC11(p, "noop", 1);
		if (FUNC8(s, p) == false)
		{
			FUNC5(p);
			return NULL;
		}

		FUNC5(p);

		num_noop++;

		if (num_noop > MAX_NOOP_PER_SESSION)
		{
			return NULL;
		}

		goto START;
	}

	return p;

BAD_REQUEST:
	// Return an error
	return NULL;
}