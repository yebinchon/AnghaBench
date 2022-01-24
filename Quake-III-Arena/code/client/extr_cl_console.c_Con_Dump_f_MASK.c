#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_2__   TYPE_1__ ;

/* Type definitions */
typedef  int /*<<< orphan*/  fileHandle_t ;
struct TYPE_2__ {int current; int totallines; short* text; int linewidth; } ;

/* Variables and functions */
 int FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int) ; 
 int /*<<< orphan*/  FUNC2 (char*,...) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC5 (char*,int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 TYPE_1__ con ; 
 int /*<<< orphan*/  FUNC6 (char*,char*) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 

void FUNC8 (void)
{
	int		l, x, i;
	short	*line;
	fileHandle_t	f;
	char	buffer[1024];

	if (FUNC0() != 2)
	{
		FUNC2 ("usage: condump <filename>\n");
		return;
	}

	FUNC2 ("Dumped console text to %s.\n", FUNC1(1) );

	f = FUNC4( FUNC1( 1 ) );
	if (!f)
	{
		FUNC2 ("ERROR: couldn't open.\n");
		return;
	}

	// skip empty lines
	for (l = con.current - con.totallines + 1 ; l <= con.current ; l++)
	{
		line = con.text + (l%con.totallines)*con.linewidth;
		for (x=0 ; x<con.linewidth ; x++)
			if ((line[x] & 0xff) != ' ')
				break;
		if (x != con.linewidth)
			break;
	}

	// write the remaining lines
	buffer[con.linewidth] = 0;
	for ( ; l <= con.current ; l++)
	{
		line = con.text + (l%con.totallines)*con.linewidth;
		for(i=0; i<con.linewidth; i++)
			buffer[i] = line[i] & 0xff;
		for (x=con.linewidth-1 ; x>=0 ; x--)
		{
			if (buffer[x] == ' ')
				buffer[x] = 0;
			else
				break;
		}
		FUNC6( buffer, "\n" );
		FUNC5(buffer, FUNC7(buffer), f);
	}

	FUNC3( f );
}