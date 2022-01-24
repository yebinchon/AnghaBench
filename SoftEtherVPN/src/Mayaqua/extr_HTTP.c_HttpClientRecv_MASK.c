#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_14__   TYPE_3__ ;
typedef  struct TYPE_13__   TYPE_2__ ;
typedef  struct TYPE_12__   TYPE_1__ ;

/* Type definitions */
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_14__ {int /*<<< orphan*/  Target; int /*<<< orphan*/  Method; } ;
struct TYPE_13__ {int /*<<< orphan*/  Data; } ;
struct TYPE_12__ {int /*<<< orphan*/  SecureMode; } ;
typedef  TYPE_1__ SOCK ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_2__ HTTP_VALUE ;
typedef  TYPE_3__ HTTP_HEADER ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int /*<<< orphan*/ * FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (TYPE_3__*) ; 
 scalar_t__ FUNC4 (TYPE_3__*) ; 
 TYPE_2__* FUNC5 (TYPE_3__*,char*) ; 
 char* HTTP_CONTENT_TYPE2 ; 
 scalar_t__ MAX_PACK_SIZE ; 
 int /*<<< orphan*/ * FUNC6 (scalar_t__,int) ; 
 int /*<<< orphan*/ * FUNC7 () ; 
 int FUNC8 (TYPE_1__*,int /*<<< orphan*/ *,scalar_t__,int /*<<< orphan*/ ) ; 
 TYPE_3__* FUNC9 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 scalar_t__ FUNC11 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,scalar_t__) ; 

PACK *FUNC13(SOCK *s)
{
	BUF *b;
	PACK *p;
	HTTP_HEADER *h;
	UINT size;
	UCHAR *tmp;
	HTTP_VALUE *v;
	// Validate arguments
	if (s == NULL)
	{
		return NULL;
	}

	h = FUNC9(s);
	if (h == NULL)
	{
		return NULL;
	}

	if (FUNC11(h->Method, "HTTP/1.1") != 0 ||
		FUNC11(h->Target, "200") != 0)
	{
		FUNC3(h);
		return NULL;
	}

	v = FUNC5(h, "Content-Type");
	if (v == NULL || FUNC11(v->Data, HTTP_CONTENT_TYPE2) != 0)
	{
		FUNC3(h);
		return NULL;
	}

	size = FUNC4(h);
	if (size == 0 || size > MAX_PACK_SIZE)
	{
		FUNC3(h);
		return NULL;
	}

	tmp = FUNC6(size, true);
	if (FUNC8(s, tmp, size, s->SecureMode) == false)
	{
		FUNC1(tmp);
		FUNC3(h);
		return NULL;
	}

	b = FUNC7();
	FUNC12(b, tmp, size);
	FUNC1(tmp);
	FUNC3(h);

	FUNC10(b, 0, 0);
	p = FUNC0(b);
	FUNC2(b);

	return p;
}