#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_16__   TYPE_3__ ;
typedef  struct TYPE_15__   TYPE_2__ ;
typedef  struct TYPE_14__   TYPE_1__ ;
typedef  struct TYPE_13__   TYPE_11__ ;

/* Type definitions */
typedef  char wchar_t ;
typedef  int /*<<< orphan*/  tmp2 ;
typedef  int /*<<< orphan*/  name ;
typedef  int UINT64 ;
typedef  int UINT ;
typedef  char UCHAR ;
struct TYPE_16__ {int JsonHint_IsArray; int JsonHint_IsDateTime; } ;
struct TYPE_14__ {int boolean; int number; char* string; } ;
struct TYPE_15__ {scalar_t__ type; TYPE_1__ value; } ;
struct TYPE_13__ {int JsonHint_IsArray; } ;
typedef  int /*<<< orphan*/  PACK ;
typedef  TYPE_2__ JSON_VALUE ;
typedef  int /*<<< orphan*/  IP ;
typedef  TYPE_3__ ELEMENT ;

/* Variables and functions */
 int FUNC0 (char*,char*,int) ; 
 char* FUNC1 (char*) ; 
 int FUNC2 (char*) ; 
 TYPE_11__* FUNC3 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ JSON_TYPE_BOOL ; 
 scalar_t__ JSON_TYPE_NUMBER ; 
 scalar_t__ JSON_TYPE_STRING ; 
 int FUNC5 (int) ; 
 int MAX_PATH ; 
 TYPE_3__* FUNC6 (int /*<<< orphan*/ *,char*,int,int,int) ; 
 TYPE_3__* FUNC7 (int /*<<< orphan*/ *,char*,char*,int,int,int) ; 
 TYPE_3__* FUNC8 (int /*<<< orphan*/ *,char*,int,int,int) ; 
 TYPE_3__* FUNC9 (int /*<<< orphan*/ *,char*,int,int,int) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int,int,int) ; 
 TYPE_3__* FUNC11 (int /*<<< orphan*/ *,char*,char*,int,int) ; 
 TYPE_3__* FUNC12 (int /*<<< orphan*/ *,char*,char*,int,int) ; 
 int FUNC13 (char*) ; 
 scalar_t__ FUNC14 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,int,char*) ; 
 int FUNC16 (char*) ; 
 int FUNC17 (char*) ; 
 int FUNC18 (char*) ; 
 int /*<<< orphan*/  FUNC19 (char*,int) ; 
 scalar_t__ FUNC20 (char*,int,char*,char*) ; 
 char* FUNC21 (int) ; 

bool FUNC22(PACK *p, JSON_VALUE *v, char *v_name, UINT index, UINT total, bool is_single)
{
	char name[MAX_PATH];
	bool ok = true;
	if (p == NULL || v == NULL)
	{
		return false;
	}

	if (FUNC20(name, sizeof(name), v_name, "_bool"))
	{
		if (v->type == JSON_TYPE_BOOL)
		{
			FUNC3(FUNC6(p, name, FUNC5(v->value.boolean), index, total))->JsonHint_IsArray = !is_single;
			ok = true;
		}
		else if (v->type == JSON_TYPE_NUMBER)
		{
			FUNC3(FUNC6(p, name, FUNC5(v->value.number), index, total))->JsonHint_IsArray = !is_single;
			ok = true;
		}
		else if (v->type == JSON_TYPE_STRING)
		{
			FUNC3(FUNC6(p, name, FUNC16(v->value.string), index, total))->JsonHint_IsArray = !is_single;
			ok = true;
		}
	}
	else if (FUNC20(name, sizeof(name), v_name, "_u32"))
	{
		if (v->type == JSON_TYPE_BOOL)
		{
			FUNC3(FUNC9(p, name, FUNC5(v->value.boolean), index, total))->JsonHint_IsArray = !is_single;
			ok = true;
		}
		else if (v->type == JSON_TYPE_NUMBER)
		{
			FUNC3(FUNC9(p, name, (UINT)v->value.number, index, total))->JsonHint_IsArray = !is_single;
			ok = true;
		}
		else if (v->type == JSON_TYPE_STRING)
		{
			FUNC3(FUNC9(p, name, FUNC17(v->value.string), index, total))->JsonHint_IsArray = !is_single;
			ok = true;
		}
	}
	else if (FUNC20(name, sizeof(name), v_name, "_u64"))
	{
		if (v->type == JSON_TYPE_BOOL)
		{
			FUNC3(FUNC8(p, name, FUNC5(v->value.boolean), index, total))->JsonHint_IsArray = !is_single;
			ok = true;
		}
		else if (v->type == JSON_TYPE_NUMBER)
		{
			FUNC3(FUNC8(p, name, v->value.number, index, total))->JsonHint_IsArray = !is_single;
			ok = true;
		}
		else if (v->type == JSON_TYPE_STRING)
		{
			FUNC3(FUNC8(p, name, FUNC18(v->value.string), index, total))->JsonHint_IsArray = !is_single;
			ok = true;
		}
	}
	else if (FUNC20(name, sizeof(name), v_name, "_str"))
	{
		if (v->type == JSON_TYPE_BOOL)
		{
			FUNC3(FUNC11(p, name, FUNC5(v->value.boolean) ? "true" : "false", index, total))->JsonHint_IsArray = !is_single;
			ok = true;
		}
		else if (v->type == JSON_TYPE_NUMBER)
		{
			char tmp[64];
			FUNC19(tmp, v->value.number);
			FUNC3(FUNC11(p, name, tmp, index, total))->JsonHint_IsArray = !is_single;
			ok = true;
		}
		else if (v->type == JSON_TYPE_STRING)
		{
			FUNC3(FUNC11(p, name, v->value.string, index, total))->JsonHint_IsArray = !is_single;
			ok = true;
		}
	}
	else if (FUNC20(name, sizeof(name), v_name, "_utf"))
	{
		if (v->type == JSON_TYPE_BOOL)
		{
			FUNC3(FUNC12(p, name, FUNC5(v->value.boolean) ? L"true" : L"false", index, total))->JsonHint_IsArray = !is_single;
			ok = true;
		}
		else if (v->type == JSON_TYPE_NUMBER)
		{
			char tmp[64];
			wchar_t tmp2[64];
			FUNC19(tmp, v->value.number);
			FUNC15(tmp2, sizeof(tmp2), tmp);
			FUNC3(FUNC12(p, name, tmp2, index, total))->JsonHint_IsArray = !is_single;
			ok = true;
		}
		else if (v->type == JSON_TYPE_STRING)
		{
			wchar_t *uni = FUNC1(v->value.string);
			FUNC3(FUNC12(p, name, uni, index, total))->JsonHint_IsArray = !is_single;
			FUNC4(uni);
			ok = true;
		}
	}
	else if (FUNC20(name, sizeof(name), v_name, "_bin"))
	{
		if (v->type == JSON_TYPE_STRING)
		{
			UINT len = FUNC13(v->value.string);
			UCHAR *data = FUNC21(len * 4 + 64);
			UINT size = FUNC0(data, v->value.string, len);
			FUNC3(FUNC7(p, name, data, size, index, total))->JsonHint_IsArray = !is_single;
			FUNC4(data);
			ok = true;
		}
	}
	else if (FUNC20(name, sizeof(name), v_name, "_dt"))
	{
		if (v->type == JSON_TYPE_NUMBER)
		{
			FUNC3(FUNC8(p, name, v->value.number, index, total))->JsonHint_IsArray = !is_single;
			ok = true;
		}
		else if (v->type == JSON_TYPE_STRING)
		{
			UINT64 time = FUNC2(v->value.string);
			ELEMENT *e = FUNC8(p, name, time, index, total);
			if (e != NULL)
			{
				e->JsonHint_IsArray = !is_single;
				e->JsonHint_IsDateTime = true;
			}
			ok = true;
		}
	}
	else if (FUNC20(name, sizeof(name), v_name, "_ip"))
	{
		if (v->type == JSON_TYPE_STRING)
		{
			IP ip;
			if (FUNC14(&ip, v->value.string))
			{
				FUNC10(p, name, &ip, index, total, is_single);
				ok = true;
			}
		}
	}

	return ok;
}