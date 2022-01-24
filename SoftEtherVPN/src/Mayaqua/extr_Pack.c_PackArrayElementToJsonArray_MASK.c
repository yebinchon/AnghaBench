#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_9__   TYPE_3__ ;
typedef  struct TYPE_8__   TYPE_2__ ;
typedef  struct TYPE_7__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  ip_str ;
typedef  int /*<<< orphan*/  dtstr ;
typedef  scalar_t__ UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_9__ {int /*<<< orphan*/  Size; int /*<<< orphan*/ * Buf; } ;
struct TYPE_8__ {scalar_t__ num_value; int type; int JsonHint_IsIP; int JsonHint_IsDateTime; TYPE_1__** values; int /*<<< orphan*/  name; int /*<<< orphan*/  JsonHint_IsBool; } ;
struct TYPE_7__ {char* Str; char* UniStr; } ;
typedef  int /*<<< orphan*/  PACK ;
typedef  int /*<<< orphan*/  JSON_ARRAY ;
typedef  int /*<<< orphan*/  IP ;
typedef  TYPE_2__ ELEMENT ;
typedef  TYPE_3__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC1 (char*,int,int /*<<< orphan*/ *) ; 
 int FUNC2 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 TYPE_3__* FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,scalar_t__) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,scalar_t__) ; 
 int /*<<< orphan*/  FUNC13 (char*,int,int /*<<< orphan*/ ) ; 
#define  VALUE_DATA 132 
#define  VALUE_INT 131 
#define  VALUE_INT64 130 
#define  VALUE_STR 129 
#define  VALUE_UNISTR 128 

void FUNC14(JSON_ARRAY *ja, PACK *p, ELEMENT *e, UINT index)
{
	if (ja == NULL || p == NULL || e == NULL || index >= e->num_value)
	{
		return;
	}

	switch (e->type)
	{
	case VALUE_INT:
		if (e->JsonHint_IsIP)
		{
			if (FUNC2(e->name, "@") == false)
			{
				IP ip;
				if (FUNC12(p, e->name, &ip, index))
				{
					char ip_str[64];
					FUNC1(ip_str, sizeof(ip_str), &ip);
					FUNC6(ja, ip_str);
				}
			}
		}
		else if (e->JsonHint_IsBool)
		{
			FUNC3(ja, FUNC8(p, e->name, index));
		}
		else
		{
			FUNC5(ja, FUNC11(p, e->name, index));
		}
		break;
	case VALUE_INT64:
		if (e->JsonHint_IsIP == false)
		{
			if (e->JsonHint_IsDateTime == false)
			{
				FUNC5(ja, FUNC10(p, e->name, index));
			}
			else
			{
				char dtstr[64];

				FUNC13(dtstr, sizeof(dtstr), FUNC10(p, e->name, index));
				FUNC6(ja, dtstr);
			}
		}
		break;
	case VALUE_DATA:
		if (e->JsonHint_IsIP == false)
		{
			BUF *buf = FUNC9(p, e->name, index);
			if (buf != NULL)
			{
				FUNC4(ja, buf->Buf, buf->Size);
				FUNC0(buf);
			}
			else
			{
				UCHAR zero = 0;
				FUNC4(ja, &zero, 0);
			}
		}
		break;
	case VALUE_STR:
		if (e->JsonHint_IsIP == false)
		{
			if (e->values[index] != NULL)
			{
				FUNC6(ja, e->values[index]->Str);
			}
			else
			{
				FUNC6(ja, "");
			}
		}
		break;
	case VALUE_UNISTR:
		if (e->JsonHint_IsIP == false)
		{
			if (e->values[index] != NULL)
			{
				FUNC7(ja, e->values[index]->UniStr);
			}
			else
			{
				FUNC7(ja, L"");
			}
		}
		break;
	}
}