#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_10__   TYPE_3__ ;
typedef  struct TYPE_9__   TYPE_2__ ;
typedef  struct TYPE_8__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  name ;
typedef  int /*<<< orphan*/  ip_str ;
typedef  int /*<<< orphan*/  dtstr ;
typedef  size_t UINT ;
typedef  int /*<<< orphan*/  UCHAR ;
struct TYPE_10__ {int /*<<< orphan*/  Size; int /*<<< orphan*/ * Buf; } ;
struct TYPE_9__ {int type; int JsonHint_IsIP; int JsonHint_IsDateTime; TYPE_1__** values; int /*<<< orphan*/  name; int /*<<< orphan*/  JsonHint_IsBool; } ;
struct TYPE_8__ {char* Str; char* UniStr; } ;
typedef  int /*<<< orphan*/  PACK ;
typedef  int /*<<< orphan*/  JSON_OBJECT ;
typedef  int /*<<< orphan*/  IP ;
typedef  TYPE_2__ ELEMENT ;
typedef  TYPE_3__ BUF ;

/* Variables and functions */
 char* FUNC0 (TYPE_2__*) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_3__*) ; 
 int /*<<< orphan*/  FUNC2 (char*,int,int /*<<< orphan*/ *) ; 
 int FUNC3 (int /*<<< orphan*/ ,char*) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ *,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC7 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/  FUNC8 (int /*<<< orphan*/ *,char*,char*) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC9 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 TYPE_3__* FUNC10 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC11 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC12 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,size_t) ; 
 int /*<<< orphan*/  FUNC13 (int /*<<< orphan*/ *,int /*<<< orphan*/ ,int /*<<< orphan*/ *,size_t) ; 
 int /*<<< orphan*/  FUNC14 (char*,int,char*) ; 
 int /*<<< orphan*/  FUNC15 (char*,int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC16 (char*,int,int /*<<< orphan*/ ) ; 
#define  VALUE_DATA 132 
#define  VALUE_INT 131 
#define  VALUE_INT64 130 
#define  VALUE_STR 129 
#define  VALUE_UNISTR 128 

void FUNC17(JSON_OBJECT *o, PACK *p, ELEMENT *e, UINT index)
{
	char *suffix;
	char name[MAX_PATH];
	if (o == NULL || p == NULL || e == NULL)
	{
		return;
	}

	suffix = FUNC0(e);

	if (suffix == NULL)
	{
		return;
	}

	FUNC15(name, sizeof(name), e->name);
	FUNC14(name, sizeof(name), suffix);

	switch (e->type)
	{
	case VALUE_INT:
		if (e->JsonHint_IsIP)
		{
			if (FUNC3(e->name, "@") == false)
			{
				IP ip;
				if (FUNC13(p, e->name, &ip, index))
				{
					char ip_str[64];
					FUNC2(ip_str, sizeof(ip_str), &ip);
					FUNC7(o, name, ip_str);
				}
			}
		}
		else if (e->JsonHint_IsBool)
		{
			FUNC4(o, name, FUNC9(p, e->name, index));
		}
		else
		{
			FUNC6(o, name, FUNC12(p, e->name, index));
		}
		break;
	case VALUE_INT64:
		if (e->JsonHint_IsIP == false)
		{
			if (e->JsonHint_IsDateTime == false)
			{
				FUNC6(o, name, FUNC11(p, e->name, index));
			}
			else
			{
				char dtstr[64];

				FUNC16(dtstr, sizeof(dtstr), FUNC11(p, e->name, index));
				FUNC7(o, name, dtstr);
			}
		}
		break;
	case VALUE_DATA:
		if (e->JsonHint_IsIP == false)
		{
			BUF *buf = FUNC10(p, e->name, index);
			if (buf != NULL)
			{
				FUNC5(o, name, buf->Buf, buf->Size);
				FUNC1(buf);
			}
			else
			{
				UCHAR zero = 0;
				FUNC5(o, name, &zero, 0);
			}
		}
		break;
	case VALUE_STR:
		if (e->JsonHint_IsIP == false)
		{
			if (e->values[index] != NULL)
			{
				FUNC7(o, name, e->values[index]->Str);
			}
			else
			{
				FUNC7(o, name, "");
			}
		}
		break;
	case VALUE_UNISTR:
		if (e->JsonHint_IsIP == false)
		{
			if (e->values[index] != NULL)
			{
				FUNC8(o, name, e->values[index]->UniStr);
			}
			else
			{
				FUNC8(o, name, L"");
			}
		}
		break;
	}
}