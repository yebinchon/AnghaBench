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
struct TYPE_5__ {char* json; int /*<<< orphan*/  env; } ;
typedef  TYPE_1__ state_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,char const*,int) ; 
 int /*<<< orphan*/  JSONSAX_MISSING_KEY ; 
 int /*<<< orphan*/  JSONSAX_MISSING_VALUE ; 
 int /*<<< orphan*/  JSONSAX_UNTERMINATED_KEY ; 
 int /*<<< orphan*/  JSONSAX_UNTERMINATED_OBJECT ; 
 int /*<<< orphan*/  end_object ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  key ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  start_object ; 
 char* FUNC5 (char*,char) ; 

__attribute__((used)) static void FUNC6( state_t* state )
{
   state->json++; /* we're sure the current character is a '{' */
   FUNC4( state );
   FUNC0( start_object );

   while ( *state->json != '}' )
   {
      const char *name = NULL;
      if ( *state->json != '"' )
         FUNC3( state->env, JSONSAX_MISSING_KEY );

      name = ++state->json;

      for ( ;; )
      {
         const char* quote = FUNC5( state->json, '"' );

         if ( !quote )
            FUNC3( state->env, JSONSAX_UNTERMINATED_KEY );

         state->json = quote + 1;

         if ( quote[ -1 ] != '\\' )
            break;
      }

      FUNC1( key, name, state->json - name - 1 );
      FUNC4( state );

      if ( *state->json != ':' )
         FUNC3( state->env, JSONSAX_MISSING_VALUE );

      state->json++;
      FUNC4( state );
      FUNC2( state );
      FUNC4( state );

      if ( *state->json != ',' )
         break;

      state->json++;
      FUNC4( state );
   }

   if ( *state->json != '}' )
      FUNC3( state->env, JSONSAX_UNTERMINATED_OBJECT );

   state->json++;
   FUNC0( end_object );
}