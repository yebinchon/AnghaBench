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

/* Variables and functions */
 char* BASEDIRNAME ; 
 int /*<<< orphan*/  FUNC0 (char*,char*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char*,char*,int) ; 
 int /*<<< orphan*/  gamedir ; 
 int /*<<< orphan*/  qdir ; 
 int /*<<< orphan*/  FUNC3 (char*,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (char*,char*) ; 
 int FUNC5 (char*) ; 
 int /*<<< orphan*/  FUNC6 (int /*<<< orphan*/ ,char*,int) ; 

void FUNC7 (char *path)
{
	char	temp[1024];
	char	*c;
	int		len;

	if (!(path[0] == '/' || path[0] == '\\' || path[1] == ':'))
	{	// path is partial
		FUNC1 (temp);
		FUNC4 (temp, path);
		path = temp;
	}

	// search for "quake2" in path

	len = FUNC5(BASEDIRNAME);
	for (c=path+FUNC5(path)-1 ; c != path ; c--)
		if (!FUNC2 (c, BASEDIRNAME, len))
		{
			FUNC6 (qdir, path, c+len+1-path);
			FUNC3 ("qdir: %s\n", qdir);
			c += len+1;
			while (*c)
			{
				if (*c == '/' || *c == '\\')
				{
					FUNC6 (gamedir, path, c+1-path);
					FUNC3 ("gamedir: %s\n", gamedir);
					return;
				}
				c++;
			}
			FUNC0 ("No gamedir in %s", path);
			return;
		}
	FUNC0 ("SetQdirFromPath: no '%s' in %s", BASEDIRNAME, path);
}