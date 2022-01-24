#define NULL ((void*)0)
typedef unsigned long size_t;  // Customize by platform.
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;  // Either arithmetic or pointer type.
/* By default, we understand bool (as a convenience). */
typedef int bool;
#define false 0
#define true 1

/* Forward declarations */
typedef  struct TYPE_3__   TYPE_1__ ;

/* Type definitions */
struct TYPE_3__ {char* json; int /*<<< orphan*/  env; } ;
typedef  TYPE_1__ state_t ;

/* Variables and functions */
 int /*<<< orphan*/  FUNC0 (char const*,char const*,int) ; 
 int /*<<< orphan*/  JSONSAX_UNTERMINATED_STRING ; 
 int /*<<< orphan*/  FUNC1 (int /*<<< orphan*/ ,int /*<<< orphan*/ ) ; 
 char* FUNC2 (char*,char) ; 

__attribute__((used)) static void FUNC3(state_t* state)
{
  const char* string = ++state->json;

  for ( ;; )
  {
    const char* quote = FUNC2( state->json, '"' );

    if ( !quote )
      FUNC1( state->env, JSONSAX_UNTERMINATED_STRING );

    state->json = quote + 1;

    if ( quote[ -1 ] != '\\' )
      break;
  }

  FUNC0( string, string, state->json - string - 1 );
}