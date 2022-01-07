
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;




typedef struct TYPE_3__ TYPE_1__ ;


struct TYPE_3__ {int env; scalar_t__ json; } ;
typedef TYPE_1__ state_t ;


 int HANDLE_0 (int ) ;
 int JSONSAX_INVALID_VALUE ;
 int longjmp (int ,int ) ;
 int null ;
 int strncmp (scalar_t__,char*,int) ;

__attribute__((used)) static void jsonx_parse_null(state_t* state)
{
   if ( !strncmp( state->json + 1, "ull", 3 ) )
   {
      state->json += 4;
      HANDLE_0( null );
   }
   else
      longjmp( state->env, JSONSAX_INVALID_VALUE );
}
