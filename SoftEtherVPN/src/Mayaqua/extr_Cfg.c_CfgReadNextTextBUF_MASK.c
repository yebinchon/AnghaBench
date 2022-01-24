#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_4__   TYPE_1__ ;

/* Type definitions */
typedef  char wchar_t ;
typedef  scalar_t__ UINT ;
struct TYPE_4__ {int NumTokens; char** Token; } ;
typedef  TYPE_1__ TOKEN_LIST ;
typedef  int /*<<< orphan*/  FOLDER ;
typedef  int /*<<< orphan*/  BUF ;

/* Variables and functions */
 int FUNC0 (void*,char*,int) ; 
 scalar_t__ FUNC1 (char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ *,char*,int) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ *,char*,void*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ *,char*,scalar_t__) ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ *,char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ *,char*,char*) ; 
 int /*<<< orphan*/ * FUNC7 (int /*<<< orphan*/ *,char*) ; 
 char* FUNC8 (int /*<<< orphan*/ *) ; 
 char* FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (char*) ; 
 int /*<<< orphan*/  FUNC11 (TYPE_1__*) ; 
 void* FUNC12 (int) ; 
 TYPE_1__* FUNC13 (char*,char*) ; 
 int /*<<< orphan*/  FUNC14 (char*,char*) ; 
 int FUNC15 (char*) ; 
 char* TAG_BOOL ; 
 char* TAG_BYTE ; 
 char* TAG_DECLARE ; 
 char* TAG_INT ; 
 char* TAG_INT64 ; 
 char* TAG_STRING ; 
 char* TAG_TRUE ; 
 scalar_t__ FUNC16 (char*) ; 
 int /*<<< orphan*/  FUNC17 (char*) ; 
 int /*<<< orphan*/  FUNC18 (char*,scalar_t__,char*,int) ; 

bool FUNC19(BUF *b, FOLDER *current)
{
	char *buf;
	TOKEN_LIST *token;
	char *name;
	char *string;
	char *data;
	bool ret;
	FOLDER *f;

	// Validate arguments
	if (b == NULL || current == NULL)
	{
		return false;
	}

	ret = true;

	// Read one line
	buf = FUNC8(b);
	if (buf == NULL)
	{
		return false;
	}

	// Analyze this line
	token = FUNC13(buf, "\t ");
	if (token == NULL)
	{
		FUNC10(buf);
		return false;
	}

	if (token->NumTokens >= 1)
	{
		if (!FUNC14(token->Token[0], TAG_DECLARE))
		{
			if (token->NumTokens >= 2)
			{
				// declare
				name = FUNC9(token->Token[1]);

				// Create a folder
				f = FUNC7(current, name);

				// Read the next folder
				while (true)
				{
					if (FUNC19(b, f) == false)
					{
						break;
					}
				}

				FUNC10(name);
			}
		}
		if (!FUNC14(token->Token[0], "}"))
		{
			// end
			ret = false;
		}
		if (token->NumTokens >= 3)
		{
			name = FUNC9(token->Token[1]);
			data = token->Token[2];

			if (!FUNC14(token->Token[0], TAG_STRING))
			{
				// string
				wchar_t *uni;
				UINT uni_size;
				string = FUNC9(data);
				uni_size = FUNC1(string, FUNC15(string));
				if (uni_size != 0)
				{
					uni = FUNC12(uni_size);
					FUNC18(uni, uni_size, string, FUNC15(string));
					FUNC6(current, name, uni);
					FUNC10(uni);
				}
				FUNC10(string);
			}
			if (!FUNC14(token->Token[0], TAG_INT))
			{
				// uint
				FUNC4(current, name, FUNC16(data));
			}
			if (!FUNC14(token->Token[0], TAG_INT64))
			{
				// uint64
				FUNC5(current, name, FUNC17(data));
			}
			if (!FUNC14(token->Token[0], TAG_BOOL))
			{
				// bool
				bool b = false;
				if (!FUNC14(data, TAG_TRUE))
				{
					b = true;
				}
				else if (FUNC16(data) != 0)
				{
					b = true;
				}
				FUNC2(current, name, b);
			}
			if (!FUNC14(token->Token[0], TAG_BYTE))
			{
				// byte
				char *unescaped_b64 = FUNC9(data);
				void *tmp = FUNC12(FUNC15(unescaped_b64) * 4 + 64);
				int size = FUNC0(tmp, unescaped_b64, FUNC15(unescaped_b64));
				FUNC3(current, name, tmp, size);
				FUNC10(tmp);
				FUNC10(unescaped_b64);
			}

			FUNC10(name);
		}
	}

	// Release of the token
	FUNC11(token);

	FUNC10(buf);

	return ret;
}