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
struct dirent {char* d_name; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC1 (char*) ; 
 char* FUNC2 () ; 
 int /*<<< orphan*/  FUNC3 () ; 
 char* FUNC4 (char*,char*,char*) ; 
 int /*<<< orphan*/ * FUNC5 (char*) ; 
 struct dirent* FUNC6 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC7 (char*) ; 
 int /*<<< orphan*/  FUNC8 (char*) ; 

void FUNC9()
{
    char          * dirname;
    DIR           * dir;
    struct dirent * entry;

    FUNC3();

    /* Find and remove temp folder */
    dirname = FUNC2();

    dir = FUNC5( dirname );
    if (dir)
    {
        while( ( entry = FUNC6( dir ) ) )
        {
            char * filename;
            if( entry->d_name[0] == '.' )
            {
                continue;
            }
            filename = FUNC4("%s/%s", dirname, entry->d_name);
            FUNC8( filename );
            FUNC1(filename);
        }
        FUNC0( dir );
        FUNC7( dirname );
    }
    FUNC1(dirname);
}