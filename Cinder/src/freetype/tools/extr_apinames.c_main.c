
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






typedef int OutputFormat ;
typedef int FILE ;


 int OUTPUT_BORLAND_DEF ;
 int OUTPUT_GNU_VERMAP ;
 int OUTPUT_LIST ;
 int OUTPUT_NETWARE_IMP ;
 int OUTPUT_WATCOM_LBC ;
 int OUTPUT_WINDOWS_DEF ;
 int exit (int) ;
 int fclose (int *) ;
 int * fopen (char const* const,char*) ;
 int fprintf (int ,char*,char const* const) ;
 int names_dump (int *,int ,char const*) ;
 int names_sort () ;
 scalar_t__ num_names ;
 int panic (char*) ;
 int read_header_file (int *,int) ;
 int stderr ;
 int * stdin ;
 int * stdout ;
 int usage () ;

int main( int argc, const char* const* argv )
{
  int from_stdin = 0;
  int verbose = 0;
  OutputFormat format = OUTPUT_LIST;
  FILE* out = stdout;
  const char* library_name = ((void*)0);

  if ( argc < 2 )
    usage();


  while ( argc > 1 && argv[1][0] == '-' )
  {
    const char* arg = argv[1];

    switch ( arg[1] )
    {
      case 'v':
        verbose = 1;
        break;

      case 'o':
        if ( arg[2] == 0 )
        {
          if ( argc < 2 )
            usage();

          arg = argv[2];
          argv++;
          argc--;
        }
        else
          arg += 2;

        out = fopen( arg, "wt" );
        if ( !out )
        {
          fprintf( stderr, "could not open '%s' for writing\n", argv[2] );
          exit(3);
        }
        break;

      case 'd':
        if ( arg[2] == 0 )
        {
          if ( argc < 2 )
            usage();

          arg = argv[2];
          argv++;
          argc--;
        }
        else
          arg += 2;

        library_name = arg;
        break;

      case 'w':
        format = OUTPUT_WINDOWS_DEF;
        switch ( arg[2] )
        {
          case 'B':
            format = OUTPUT_BORLAND_DEF;
            break;

          case 'W':
            format = OUTPUT_WATCOM_LBC;
            break;

          case 'N':
            format = OUTPUT_NETWARE_IMP;
            break;

          case 'L':
            format = OUTPUT_GNU_VERMAP;
            break;

          case 0:
            break;

          default:
            usage();
        }
        break;

      case 0:
        from_stdin = 1;
        break;

      default:
        usage();
    }

    argc--;
    argv++;
  }

  if ( from_stdin )
  {
    read_header_file( stdin, verbose );
  }
  else
  {
    for ( --argc, argv++; argc > 0; argc--, argv++ )
    {
      FILE* file = fopen( argv[0], "rb" );

      if ( !file )
        fprintf( stderr, "unable to open '%s'\n", argv[0] );
      else
      {
        if ( verbose )
          fprintf( stderr, "opening '%s'\n", argv[0] );

        read_header_file( file, verbose );
        fclose( file );
      }
    }
  }

  if ( num_names == 0 )
    panic( "could not find exported functions !!\n" );

  names_sort();
  names_dump( out, format, library_name );

  if ( out != stdout )
    fclose( out );

  return 0;
}
