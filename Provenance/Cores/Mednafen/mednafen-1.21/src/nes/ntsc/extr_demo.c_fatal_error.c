
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 int EXIT_FAILURE ;
 int exit (int ) ;
 int fprintf (int ,char*,char const*) ;
 int stderr ;

void fatal_error( const char* str )
{
 fprintf( stderr, "Error: %s\n", str );
 exit( EXIT_FAILURE );
}
