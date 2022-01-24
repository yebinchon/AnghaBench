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
struct stat {int /*<<< orphan*/  st_size; int /*<<< orphan*/  st_mode; } ;
struct fontlist {int dummy; } ;
struct dirent {char* d_name; } ;
typedef  int /*<<< orphan*/  buffer ;
struct TYPE_5__ {int /*<<< orphan*/ * name; int /*<<< orphan*/  len; } ;
typedef  int /*<<< orphan*/  DIR ;

/* Variables and functions */
 scalar_t__ FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ *) ; 
 int /*<<< orphan*/  FUNC2 (int) ; 
 scalar_t__ FUNC3 (char*,char**) ; 
 unsigned int fcnt ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 TYPE_1__* fontlist ; 
 int /*<<< orphan*/  FUNC5 (int /*<<< orphan*/ ,char*,...) ; 
 int /*<<< orphan*/ * FUNC6 (char*) ; 
 struct dirent* FUNC7 (int /*<<< orphan*/ *) ; 
 TYPE_1__* FUNC8 (TYPE_1__*,unsigned int) ; 
 int /*<<< orphan*/  FUNC9 (char*,int,char*,char*,char*) ; 
 int FUNC10 (char*,struct stat*) ; 
 int /*<<< orphan*/  stderr ; 
 int /*<<< orphan*/ * FUNC11 (char*) ; 

__attribute__((used)) static void
  FUNC12( char**  fontdirs,
             char**  extensions )
  {
    int           i;
    unsigned int  max;
    char          buffer[1025];
    struct stat   statb;


    max  = 0;
    fcnt = 0;

    for ( i = 0; fontdirs[i] != NULL; i++ )
    {
      DIR*            examples;
      struct dirent*  ent;


      examples = FUNC6( fontdirs[i] );
      if ( !examples )
      {
        FUNC5( stderr,
                 "Can't open example font directory `%s'\n",
                 fontdirs[i] );
        FUNC2( 1 );
      }

      while ( ( ent = FUNC7( examples ) ) != NULL )
      {
        FUNC9( buffer, sizeof ( buffer ),
                  "%s/%s", fontdirs[i], ent->d_name );
        if ( FUNC10( buffer, &statb ) == -1 || FUNC0( statb.st_mode ) )
          continue;
        if ( !extensions || FUNC3( buffer, extensions ) )
        {
          if ( fcnt >= max )
          {
            max += 100;
            fontlist = FUNC8( fontlist, max * sizeof ( struct fontlist ) );
            if ( !fontlist )
            {
              FUNC5( stderr, "Can't allocate memory\n" );
              FUNC2( 1 );
            }
          }

          fontlist[fcnt].name = FUNC11( buffer );
          fontlist[fcnt].len  = statb.st_size;

          FUNC4( &fontlist[fcnt] );
          fcnt++;
        }
      }

      FUNC1( examples );
    }

    if ( fcnt == 0 )
    {
      FUNC5( stderr, "Can't find matching font files.\n" );
      FUNC2( 1 );
    }

    fontlist[fcnt].name = NULL;
  }