
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* json; int env; } ;
typedef TYPE_1__ state_t ;


 int HANDLE_0 (int ) ;
 int HANDLE_2 (int ,char const*,int) ;
 int JSONSAX_MISSING_KEY ;
 int JSONSAX_MISSING_VALUE ;
 int JSONSAX_UNTERMINATED_KEY ;
 int JSONSAX_UNTERMINATED_OBJECT ;
 int end_object ;
 int jsonx_parse_value (TYPE_1__*) ;
 int key ;
 int longjmp (int ,int ) ;
 int skip_spaces (TYPE_1__*) ;
 int start_object ;
 char* strchr (char*,char) ;

__attribute__((used)) static void jsonx_parse_object( state_t* state )
{
   state->json++;
   skip_spaces( state );
   HANDLE_0( start_object );

   while ( *state->json != '}' )
   {
      const char *name = ((void*)0);
      if ( *state->json != '"' )
         longjmp( state->env, JSONSAX_MISSING_KEY );

      name = ++state->json;

      for ( ;; )
      {
         const char* quote = strchr( state->json, '"' );

         if ( !quote )
            longjmp( state->env, JSONSAX_UNTERMINATED_KEY );

         state->json = quote + 1;

         if ( quote[ -1 ] != '\\' )
            break;
      }

      HANDLE_2( key, name, state->json - name - 1 );
      skip_spaces( state );

      if ( *state->json != ':' )
         longjmp( state->env, JSONSAX_MISSING_VALUE );

      state->json++;
      skip_spaces( state );
      jsonx_parse_value( state );
      skip_spaces( state );

      if ( *state->json != ',' )
         break;

      state->json++;
      skip_spaces( state );
   }

   if ( *state->json != '}' )
      longjmp( state->env, JSONSAX_UNTERMINATED_OBJECT );

   state->json++;
   HANDLE_0( end_object );
}
