
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_2__ TYPE_1__ ;


typedef int temp ;
struct TYPE_2__ {char const* name; } ;
typedef int OutputFormat ;
typedef int FILE ;







 int exit (int) ;
 int fprintf (int *,char*,...) ;
 int memcpy (char*,char const*,int) ;
 int num_names ;
 int stderr ;
 char* strchr (char const*,char) ;
 TYPE_1__* the_names ;

__attribute__((used)) static void
names_dump( FILE* out,
            OutputFormat format,
            const char* dll_name )
{
  int nn;


  switch ( format )
  {
    case 128:
      if ( dll_name )
        fprintf( out, "LIBRARY %s\n", dll_name );

      fprintf( out, "DESCRIPTION  FreeType 2 DLL\n" );
      fprintf( out, "EXPORTS\n" );
      for ( nn = 0; nn < num_names; nn++ )
        fprintf( out, "  %s\n", the_names[nn].name );
      break;

    case 132:
      if ( dll_name )
        fprintf( out, "LIBRARY %s\n", dll_name );

      fprintf( out, "DESCRIPTION  FreeType 2 DLL\n" );
      fprintf( out, "EXPORTS\n" );
      for ( nn = 0; nn < num_names; nn++ )
        fprintf( out, "  _%s\n", the_names[nn].name );
      break;

    case 129:
      {
        const char* dot;
        char temp[512];


        if ( !dll_name )
        {
          fprintf( stderr,
                   "you must provide a DLL name with the -d option!\n" );
          exit( 4 );
        }


        dot = strchr( dll_name, '.' );
        if ( dot )
        {
          int len = dot - dll_name;


          if ( len > (int)( sizeof ( temp ) - 1 ) )
            len = sizeof ( temp ) - 1;

          memcpy( temp, dll_name, len );
          temp[len] = 0;

          dll_name = (const char*)temp;
        }

        for ( nn = 0; nn < num_names; nn++ )
          fprintf( out, "++_%s.%s.%s\n", the_names[nn].name, dll_name,
                        the_names[nn].name );
      }
      break;

    case 130:
      {
        if ( dll_name )
          fprintf( out, "  (%s)\n", dll_name );
        for ( nn = 0; nn < num_names - 1; nn++ )
          fprintf( out, "  %s,\n", the_names[nn].name );
        fprintf( out, "  %s\n", the_names[num_names - 1].name );
      }
      break;

    case 131:
      {
        fprintf( out, "{\n\tglobal:\n" );
        for ( nn = 0; nn < num_names; nn++ )
          fprintf( out, "\t\t%s;\n", the_names[nn].name );
        fprintf( out, "\tlocal:\n\t\t*;\n};\n" );
      }
      break;

    default:
      for ( nn = 0; nn < num_names; nn++ )
        fprintf( out, "%s\n", the_names[nn].name );
  }
}
