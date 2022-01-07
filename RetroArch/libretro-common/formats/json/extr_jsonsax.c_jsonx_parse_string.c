
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {char* json; int env; } ;
typedef TYPE_1__ state_t ;


 int HANDLE_2 (char const*,char const*,int) ;
 int JSONSAX_UNTERMINATED_STRING ;
 int longjmp (int ,int ) ;
 char* strchr (char*,char) ;

__attribute__((used)) static void jsonx_parse_string(state_t* state)
{
  const char* string = ++state->json;

  for ( ;; )
  {
    const char* quote = strchr( state->json, '"' );

    if ( !quote )
      longjmp( state->env, JSONSAX_UNTERMINATED_STRING );

    state->json = quote + 1;

    if ( quote[ -1 ] != '\\' )
      break;
  }

  HANDLE_2( string, string, state->json - string - 1 );
}
