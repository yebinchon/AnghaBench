
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct stat {int st_size; int st_mode; } ;
struct fontlist {int dummy; } ;
struct dirent {char* d_name; } ;
typedef int buffer ;
struct TYPE_5__ {int * name; int len; } ;
typedef int DIR ;


 scalar_t__ S_ISDIR (int ) ;
 int closedir (int *) ;
 int exit (int) ;
 scalar_t__ extmatch (char*,char**) ;
 unsigned int fcnt ;
 int figurefiletype (TYPE_1__*) ;
 TYPE_1__* fontlist ;
 int fprintf (int ,char*,...) ;
 int * opendir (char*) ;
 struct dirent* readdir (int *) ;
 TYPE_1__* realloc (TYPE_1__*,unsigned int) ;
 int snprintf (char*,int,char*,char*,char*) ;
 int stat (char*,struct stat*) ;
 int stderr ;
 int * strdup (char*) ;

__attribute__((used)) static void
  FindFonts( char** fontdirs,
             char** extensions )
  {
    int i;
    unsigned int max;
    char buffer[1025];
    struct stat statb;


    max = 0;
    fcnt = 0;

    for ( i = 0; fontdirs[i] != ((void*)0); i++ )
    {
      DIR* examples;
      struct dirent* ent;


      examples = opendir( fontdirs[i] );
      if ( !examples )
      {
        fprintf( stderr,
                 "Can't open example font directory `%s'\n",
                 fontdirs[i] );
        exit( 1 );
      }

      while ( ( ent = readdir( examples ) ) != ((void*)0) )
      {
        snprintf( buffer, sizeof ( buffer ),
                  "%s/%s", fontdirs[i], ent->d_name );
        if ( stat( buffer, &statb ) == -1 || S_ISDIR( statb.st_mode ) )
          continue;
        if ( !extensions || extmatch( buffer, extensions ) )
        {
          if ( fcnt >= max )
          {
            max += 100;
            fontlist = realloc( fontlist, max * sizeof ( struct fontlist ) );
            if ( !fontlist )
            {
              fprintf( stderr, "Can't allocate memory\n" );
              exit( 1 );
            }
          }

          fontlist[fcnt].name = strdup( buffer );
          fontlist[fcnt].len = statb.st_size;

          figurefiletype( &fontlist[fcnt] );
          fcnt++;
        }
      }

      closedir( examples );
    }

    if ( fcnt == 0 )
    {
      fprintf( stderr, "Can't find matching font files.\n" );
      exit( 1 );
    }

    fontlist[fcnt].name = ((void*)0);
  }
