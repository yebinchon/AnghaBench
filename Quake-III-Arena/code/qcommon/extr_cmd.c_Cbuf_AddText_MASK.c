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
struct TYPE_2__ {int cursize; int maxsize; int /*<<< orphan*/ * data; } ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *,char const*,int) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 TYPE_1__ cmd_text ; 
 int FUNC2 (char const*) ; 

void FUNC3( const char *text ) {
	int		l;
	
	l = FUNC2 (text);

	if (cmd_text.cursize + l >= cmd_text.maxsize)
	{
		FUNC1 ("Cbuf_AddText: overflow\n");
		return;
	}
	FUNC0(&cmd_text.data[cmd_text.cursize], text, l);
	cmd_text.cursize += l;
}