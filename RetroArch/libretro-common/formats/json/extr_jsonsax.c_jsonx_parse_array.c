
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_5__ TYPE_1__ ;


struct TYPE_5__ {char* json; int env; } ;
typedef TYPE_1__ state_t ;


 int HANDLE_0 (int ) ;
 int HANDLE_1 (int ,int ) ;
 int JSONSAX_UNTERMINATED_ARRAY ;
 int array_index ;
 int end_array ;
 int jsonx_parse_value (TYPE_1__*) ;
 int longjmp (int ,int ) ;
 int skip_spaces (TYPE_1__*) ;
 int start_array ;

__attribute__((used)) static void jsonx_parse_array(state_t* state)
{
   unsigned int ndx = 0;

   state->json++;
   skip_spaces( state );
   HANDLE_0( start_array );

   while ( *state->json != ']' )
   {
      HANDLE_1( array_index, ndx++ );
      jsonx_parse_value( state );
      skip_spaces( state );

      if ( *state->json != ',' )
         break;

      state->json++;
      skip_spaces( state );
   }

   if ( *state->json != ']' )
      longjmp( state->env, JSONSAX_UNTERMINATED_ARRAY );

   state->json++;
   HANDLE_0( end_array );
}
