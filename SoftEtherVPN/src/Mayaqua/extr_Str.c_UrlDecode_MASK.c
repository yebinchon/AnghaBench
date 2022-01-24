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
typedef  size_t UINT ;
typedef  char UCHAR ;
struct TYPE_5__ {int /*<<< orphan*/  Buf; } ;
typedef  TYPE_1__ BUF ;

/* Variables and functions */
 char* FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*) ; 
 size_t FUNC2 (char*) ; 
 TYPE_1__* FUNC3 () ; 
 size_t FUNC4 (char*) ; 
 int /*<<< orphan*/  FUNC5 (TYPE_1__*,char) ; 

char *FUNC6(char *url_str)
{
	UINT i, len;
	BUF *b;
	char *ret;
	if (url_str == NULL)
	{
		return NULL;
	}

	len = FUNC4(url_str);

	b = FUNC3();

	for (i = 0;i < len;i++)
	{
		char c = url_str[i];

		if (c == '%' && ((i + 2) < len))
		{
			char hex_str[8];
			UINT value;

			hex_str[0] = url_str[i + 1];
			hex_str[1] = url_str[i + 2];
			hex_str[2] = 0;

			value = FUNC2(hex_str);

			FUNC5(b, (UCHAR)value);

			i += 2;
			continue;
		}
		else
		{
			if (c == '+')
			{
				c = ' ';
			}
			FUNC5(b, c);
		}
	}

	FUNC5(b, 0);

	ret = FUNC0(b->Buf);

	FUNC1(b);

	return ret;
}