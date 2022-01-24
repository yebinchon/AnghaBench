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
 int /*<<< orphan*/  FUNC0 (char*,char const*,...) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/  FUNC2 (char const*,char*,int) ; 
 char* gamedir ; 
 char* qdir ; 
 int /*<<< orphan*/  FUNC3 (char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*,char const*) ; 
 int /*<<< orphan*/  FUNC5 (char*,char*) ; 
 size_t FUNC6 (char const*) ; 
 int /*<<< orphan*/  FUNC7 (char*,char const*,int) ; 
 char* writedir ; 

void FUNC8( const char *path )
{
	char	temp[1024];
	const char	*c;
  const char *sep;
	int		len, count;

	if (!(path[0] == '/' || path[0] == '\\' || path[1] == ':'))
	{	// path is partial
		FUNC1 (temp);
		FUNC4 (temp, path);
		path = temp;
	}

	// search for "quake2" in path

	len = FUNC6(BASEDIRNAME);
	for (c=path+FUNC6(path)-1 ; c != path ; c--)
	{
		int i;

		if (!FUNC2 (c, BASEDIRNAME, len))
		{
      //
			//strncpy (qdir, path, c+len+2-path);
      // the +2 assumes a 2 or 3 following quake which is not the
      // case with a retail install
      // so we need to add up how much to the next separator
      sep = c + len;
      count = 1;
      while (*sep && *sep != '/' && *sep != '\\')
      {
        sep++;
        count++;
      }
			FUNC7 (qdir, path, c+len+count-path);
			FUNC3 ("qdir: %s\n", qdir);
			for ( i = 0; i < FUNC6( qdir ); i++ )
			{
				if ( qdir[i] == '\\' ) 
					qdir[i] = '/';
			}

			c += len+count;
			while (*c)
			{
				if (*c == '/' || *c == '\\')
				{
					FUNC7 (gamedir, path, c+1-path);

					for ( i = 0; i < FUNC6( gamedir ); i++ )
					{
						if ( gamedir[i] == '\\' ) 
							gamedir[i] = '/';
					}

					FUNC3 ("gamedir: %s\n", gamedir);

					if ( !writedir[0] )
						FUNC5( writedir, gamedir );
					else if ( writedir[FUNC6( writedir )-1] != '/' )
					{
						writedir[FUNC6( writedir )] = '/';
						writedir[FUNC6( writedir )+1] = 0;
					}

					return;
				}
				c++;
			}
			FUNC0 ("No gamedir in %s", path);
			return;
		}
	}
	FUNC0 ("SetQdirFromPath: no '%s' in %s", BASEDIRNAME, path);
}