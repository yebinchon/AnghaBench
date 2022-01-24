#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */

/* Type definitions */
typedef  int UINT ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char*) ; 
 int /*<<< orphan*/  FUNC1 (void*) ; 
 void* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 (char*,int) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int FUNC5 (int /*<<< orphan*/ ) ; 
 int FUNC6 () ; 
 int /*<<< orphan*/  FUNC7 (int,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  stdin ; 
 int /*<<< orphan*/  stdout ; 

bool FUNC8(char *password, UINT size)
{
	UINT wp;
	bool escape = false;
	void *console;
	// Validate arguments
	if (password == NULL || size <= 1)
	{
		if (size >= 1)
		{
			password[0] = 0;
		}
		return false;
	}

	wp = 0;

	FUNC3(password, size);

	console = FUNC2();

	while (true)
	{
		int c;

#ifdef	OS_WIN32
		c = getch();
#else	// OS_WIN32
		c = FUNC5(stdin);
#endif	// OS_WIN32

		if (c >= 0x20 && c <= 0x7E)
		{
			// Character
			if ((wp + 1) < size)
			{
				password[wp++] = (char)c;
				FUNC7('*', stdout);
			}
		}
		else if (c == 0x03)
		{
			// Break
			FUNC4(0);
		}
		else if (c == 0x04 || c == 0x1a || c == 0x0D || c==0x0A)
		{
			// Exit
			if (c == 0x04 || c == 0x1a)
			{
				escape = true;
			}
			break;
		}
		else if (c == 0xE0)
		{
			// Read one more character
#ifdef	OS_WIN32
			c = getch();
#else	// OS_WIN32
			c = FUNC5(stdin);
#endif	// OS_WIN32
			if (c == 0x4B || c == 0x53)
			{
				// Backspace
				goto BACKSPACE;
			}
		}
		else if (c == 0x08)
		{
BACKSPACE:
			// Backspace
			if (wp >= 1)
			{
				password[--wp] = 0;
				FUNC7(0x08, stdout);
				FUNC7(' ', stdout);
				FUNC7(0x08, stdout);
			}
		}
	}
	FUNC0("\n");

	FUNC1(console);

	return (escape ? false : true);
}