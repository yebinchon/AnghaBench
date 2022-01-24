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
 int FUNC0 (int,char*) ; 
 int MAX_PATH ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 int /*<<< orphan*/ * FUNC2 (char*,int) ; 
 char* FUNC3 (char*) ; 
 scalar_t__ FUNC4 () ; 
 char* FUNC5 (char*,char*,int) ; 
 char* FUNC6 (int) ; 
 char* FUNC7 (char*,char) ; 
 int /*<<< orphan*/  FUNC8 (char*,char*) ; 
 char* FUNC9 (char*) ; 
 int FUNC10 (char*) ; 

char * FUNC11()
{
    char * path, * base, * p;

    /* Create the base */
#if defined( SYS_CYGWIN ) || defined( SYS_MINGW )
    base = malloc(MAX_PATH);
    int i_size = GetTempPath( MAX_PATH, base );
    if( i_size <= 0 || i_size >= MAX_PATH )
    {
        if( getcwd( base, MAX_PATH ) == NULL )
            strcpy( base, "c:" ); /* Bad fallback but ... */
    }

    /* c:/path/ works like a charm under cygwin(win32?) so use it */
    while( ( p = strchr( base, '\\' ) ) )
        *p = '/';
#else
    if( (p = FUNC3( "TMPDIR" ) ) != NULL ||
        (p = FUNC3( "TEMP" ) )   != NULL )
        base = FUNC9(p);
    else
        base = FUNC9("/tmp");
#endif
    /* I prefer to remove evntual last '/' (for cygwin) */
    if( base[FUNC10(base)-1] == '/' )
        base[FUNC10(base)-1] = '\0';

    path = FUNC5("%s/hb.%d", base, (int)FUNC4());
    FUNC1(base);

    return path;
}