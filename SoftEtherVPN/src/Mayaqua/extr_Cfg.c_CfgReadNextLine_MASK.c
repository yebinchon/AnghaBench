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
struct TYPE_5__ {int Current; int Size; scalar_t__ Buf; } ;
typedef  TYPE_1__ BUF ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (TYPE_1__*,char*,size_t) ; 
 int /*<<< orphan*/  FUNC1 (TYPE_1__*,int,int) ; 
 int FUNC2 (char*) ; 
 char* FUNC3 (size_t) ; 

char *FUNC4(BUF *b)
{
	char *tmp;
	char *buf;
	UINT len;
	// Validate arguments
	if (b == NULL)
	{
		return NULL;
	}

	// Examine the number of characters up to the next newline
	tmp = (char *)b->Buf + b->Current;
	if ((b->Size - b->Current) == 0)
	{
		// Read to the end
		return NULL;
	}
	len = 0;
	while (true)
	{
		if (tmp[len] == 13 || tmp[len] == 10)
		{
			if (tmp[len] == 13)
			{
				if (len < (b->Size - b->Current))
				{
					len++;
				}
			}
			break;
		}
		len++;
		if (len >= (b->Size - b->Current))
		{
			break;
		}
	}

	// Read ahead only 'len' bytes
	buf = FUNC3(len + 1);
	FUNC0(b, buf, len);
	FUNC1(b, 1, 1);

	if (FUNC2(buf) >= 1)
	{
		if (buf[FUNC2(buf) - 1] == 13)
		{
			buf[FUNC2(buf) - 1] = 0;
		}
	}

	return buf;
}