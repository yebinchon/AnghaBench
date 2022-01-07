
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int json; int env; } ;
typedef TYPE_1__ state_t ;


 int HANDLE_1 (int ,int) ;
 int JSONSAX_INVALID_VALUE ;
 int boolean ;
 int longjmp (int ,int ) ;
 int strncmp (int,char*,int) ;

__attribute__((used)) static void jsonx_parse_boolean(state_t* state)
{
   if ( !strncmp( state->json, "true", 4 ) )
   {
      state->json += 4;
      HANDLE_1( boolean, 1 );
   }
   else if ( !strncmp( state->json, "false", 5 ) )
   {
      state->json += 5;
      HANDLE_1( boolean, 0 );
   }
   else
      longjmp( state->env, JSONSAX_INVALID_VALUE );
}
