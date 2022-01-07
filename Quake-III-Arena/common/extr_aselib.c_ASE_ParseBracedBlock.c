
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;
 scalar_t__ ASE_GetToken (int ) ;
 int Error (char*) ;
 int qfalse ;
 char const* s_token ;
 int strcmp (char const*,char*) ;

__attribute__((used)) static void ASE_ParseBracedBlock( void (*parser)( const char *token ) )
{
 int indent = 0;

 while ( ASE_GetToken( qfalse ) )
 {
  if ( !strcmp( s_token, "{" ) )
  {
   indent++;
  }
  else if ( !strcmp( s_token, "}" ) )
  {
   --indent;
   if ( indent == 0 )
    break;
   else if ( indent < 0 )
    Error( "Unexpected '}'" );
  }
  else
  {
   if ( parser )
    parser( s_token );
  }
 }
}
