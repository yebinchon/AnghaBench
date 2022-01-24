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
typedef  int /*<<< orphan*/  wchar_t ;
typedef  int /*<<< orphan*/  txt ;
typedef  int /*<<< orphan*/  tmp ;
typedef  size_t UINT ;
typedef  int UCHAR ;
struct TYPE_3__ {scalar_t__ type; } ;
typedef  TYPE_1__ ASN1_STRING ;
typedef  int /*<<< orphan*/  ASN1_OBJECT ;

/* Variables and functions */
 size_t FUNC0 (int*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/ * FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/ * FUNC3 (int) ; 
 int /*<<< orphan*/  FUNC4 (int*) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int,char*) ; 
 int FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,size_t,int*,int /*<<< orphan*/ ) ; 
 scalar_t__ V_ASN1_BMPSTRING ; 
 scalar_t__ V_ASN1_T61STRING ; 
 scalar_t__ V_ASN1_UTF8STRING ; 
 TYPE_1__* FUNC8 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC9 (void*,int) ; 
 int FUNC10 (void*,int /*<<< orphan*/ *,int) ; 
 scalar_t__ FUNC11 (void*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC12 (int*,int) ; 
 int /*<<< orphan*/ * FUNC13 (size_t) ; 

wchar_t *FUNC14(void *xn, int nid)
{
	UCHAR txt[1024];
	bool b = false;
	UINT i, size;
	int index;
	bool unicode = false;
	bool is_utf_8 = false;
	ASN1_OBJECT *obj;
	ASN1_STRING *data;
	// Validate arguments
	if (xn == NULL || nid == 0)
	{
		return NULL;
	}

	FUNC12(txt, sizeof(txt));
	if (FUNC11(xn, nid, (char *)txt, sizeof(txt) - 2) <= 0)
	{
		return NULL;
	}

	obj = FUNC3(nid);
	if (obj == NULL)
	{
		return NULL;
	}
	index = FUNC10(xn, obj, -1);
	if (index < 0)
	{
		return NULL;
	}
	data = FUNC8(FUNC9(xn, index));
	if (data == NULL)
	{
		return NULL;
	}
	if (data->type == V_ASN1_BMPSTRING)
	{
		unicode = true;
	}
	if (data->type == V_ASN1_UTF8STRING || data->type == V_ASN1_T61STRING)
	{
		is_utf_8 = true;
	}

	size = FUNC6((wchar_t *)txt) * 4 + 8;
	for (i = 0;i < size;i++)
	{
		if (txt[i] >= 0x80)
		{
			unicode = true;
			break;
		}
	}

	if (is_utf_8)
	{
		wchar_t *ret;
		UINT ret_size;

		ret_size = FUNC0(txt, FUNC4(txt));
		ret = FUNC13(ret_size + 8);
		FUNC7(ret, ret_size, txt, FUNC4(txt));

		return ret;
	}
	else if (unicode == false)
	{
		wchar_t tmp[1024];
		FUNC5(tmp, sizeof(tmp), (char *)txt);
		return FUNC1(tmp);
	}
	else
	{
		FUNC2((wchar_t *)txt);
		return FUNC1((wchar_t *)txt);
	}
}