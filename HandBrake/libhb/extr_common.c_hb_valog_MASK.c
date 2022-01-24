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
typedef  char wchar_t ;
typedef  int /*<<< orphan*/  va_list ;
typedef  int /*<<< orphan*/  time_t ;
struct tm {int tm_hour; int tm_min; int tm_sec; } ;
typedef  scalar_t__ hb_debug_level_t ;

/* Variables and functions */
 int /*<<< orphan*/  CP_UTF8 ; 
 int /*<<< orphan*/  FUNC0 () ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,char*,int) ; 
 int /*<<< orphan*/  FUNC2 (int /*<<< orphan*/ ,int /*<<< orphan*/ ,char*,int,char*,int,int /*<<< orphan*/ *,int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,char*,char*) ; 
 int /*<<< orphan*/  FUNC4 (char*) ; 
 scalar_t__ global_verbosity_level ; 
 char* FUNC5 (char*,int /*<<< orphan*/ ) ; 
 struct tm* FUNC6 (int /*<<< orphan*/ *) ; 
 char* FUNC7 (int) ; 
 int /*<<< orphan*/  FUNC8 (char*,int,char*,int,int,int,char const*,...) ; 
 int /*<<< orphan*/  stderr ; 
 int FUNC9 (char*) ; 
 int /*<<< orphan*/  FUNC10 (int /*<<< orphan*/ *) ; 

void FUNC11( hb_debug_level_t level, const char * prefix, const char * log, va_list args)
{
    char      * string;
    time_t      _now;
    struct tm * now;
    char        preamble[362];

    if( global_verbosity_level < level )
    {
        /* Hiding message */
        return;
    }

    /* Get the time */
    _now = FUNC10( NULL );
    now  = FUNC6( &_now );
    if ( prefix && *prefix )
    {
        // limit the prefix length
        FUNC8( preamble, 361, "[%02d:%02d:%02d] %s %s\n",
                 now->tm_hour, now->tm_min, now->tm_sec, prefix, log );
    }
    else
    {
        FUNC8( preamble, 361, "[%02d:%02d:%02d] %s\n",
                  now->tm_hour, now->tm_min, now->tm_sec, log );
    }

    string = FUNC5(preamble, args);

#ifdef SYS_MINGW
    wchar_t     *wstring; /* 360 chars + \n + \0 */
    int          len;

    len = strlen(string) + 1;
    wstring = malloc(2 * len);

    // Convert internal utf8 to "console output code page".
    //
    // This is just bizarre windows behavior.  You would expect that
    // printf would automatically convert a wide character string to
    // the current "console output code page" when using the "%ls" format
    // specifier.  But it doesn't... so we must do it.
    if (!MultiByteToWideChar(CP_UTF8, 0, string, -1, wstring, len))
    {
        free(string);
        free(wstring);
        return;
    }
    free(string);
    string = malloc(2 * len);
    if (!WideCharToMultiByte(GetConsoleOutputCP(), 0, wstring, -1, string, len,
                             NULL, NULL))
    {
        free(string);
        free(wstring);
        return;
    }
    free(wstring);
#endif

    /* Print it */
    FUNC3( stderr, "%s", string );
    FUNC4(string);
}