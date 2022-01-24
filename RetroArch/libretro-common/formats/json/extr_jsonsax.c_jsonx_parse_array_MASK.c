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
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  JSONSAX_UNTERMINATED_ARRAY ; 
 int /*<<< orphan*/  array_index ; 
 int /*<<< orphan*/  end_array ; 
 int /*<<< orphan*/  FUNC2 (TYPE_1__*) ; 
 int /*<<< orphan*/  FUNC3 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 int /*<<< orphan*/  FUNC4 (TYPE_1__*) ; 
 int /*<<< orphan*/  start_array ; 

__attribute__((used)) static void FUNC5(state_t* state)
{
   unsigned int ndx = 0;

   state->json++; /* we're sure the current character is a '[' */
   FUNC4( state );
   FUNC0( start_array );

   while ( *state->json != ']' )
   {
      FUNC1( array_index, ndx++ );
      FUNC2( state );
      FUNC4( state );

      if ( *state->json != ',' )
         break;

      state->json++;
      FUNC4( state );
   }

   if ( *state->json != ']' )
      FUNC3( state->env, JSONSAX_UNTERMINATED_ARRAY );

   state->json++;
   FUNC0( end_array );
}