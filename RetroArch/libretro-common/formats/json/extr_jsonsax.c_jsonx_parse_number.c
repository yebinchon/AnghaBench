
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_4__ TYPE_1__ ;


struct TYPE_4__ {char* json; int env; } ;
typedef TYPE_1__ state_t ;


 int HANDLE_2 (char const*,char const*,int) ;
 int JSONSAX_INVALID_VALUE ;
 int isdigit (unsigned char) ;
 int longjmp (int ,int ) ;
 int skip_digits (TYPE_1__*) ;

__attribute__((used)) static void jsonx_parse_number(state_t* state)
{
   const char* number = state->json;

   if ( *state->json == '-' )
      state->json++;

   if ( !isdigit( (unsigned char)*state->json ) )
      longjmp( state->env, JSONSAX_INVALID_VALUE );

   skip_digits( state );

   if ( *state->json == '.' )
   {
      state->json++;

      if ( !isdigit( (unsigned char)*state->json ) )
         longjmp( state->env, JSONSAX_INVALID_VALUE );

      skip_digits( state );
   }

   if ( *state->json == 'e' || *state->json == 'E' )
   {
      state->json++;

      if ( *state->json == '-' || *state->json == '+' )
         state->json++;

      if ( !isdigit( (unsigned char)*state->json ) )
         longjmp( state->env, JSONSAX_INVALID_VALUE );

      skip_digits( state );
   }

   HANDLE_2( number, number, state->json - number );
}
